#include "../include/EPollPoller.h"
#include "../include/logger.h"
#include "../include/Channel.h"
#include "../include/timestamp.h"

#include <errno.h>
#include <unistd.h>
#include <cassert>
#include <string.h>

enum OPERATION
{
    kNew = -1,
    kAdded = 1,
    kDeleted
};

EPollPoller::EPollPoller(EventLoop *loop)
    : Poller(loop),
      epollfd_(::epoll_create(5)),
      events_(kInitEventListSize)
{
    if (epollfd_ < 0)
    {
        LOGFATAL("epoll_create() error:%d\n", errno)
    }
}

EPollPoller::~EPollPoller()
{
    ::close(epollfd_);
}

TimeStamp EPollPoller::poll(int timeouts, ChannelList *activeChannels)
{
    LOGINFO("func=%s -> fd total count:%d\n", __FUNCTION__, static_cast<int>(activeChannels->size()))

    int numEvents = ::epoll_wait(epollfd_, &(*events_.begin()), static_cast<int>(events_.size()), timeouts);
    int save_errno = errno;
    TimeStamp now(TimeStamp::now());

    if (numEvents > 0)
    {
        LOGINFO("%d events happened\n", numEvents)
        fillActiveChannels(numEvents, activeChannels);
        if (numEvents == events_.size())
        {
            events_.resize(events_.size() * 2);
        }
    }
    else if (numEvents == 0)
    {
        LOGDEBUG("%s timeout\n", __FUNCTION__)
    }
    else
    {
        if (save_errno != EINTR)
        {
            errno = save_errno;
            LOGERROR("EPollPoller::poll()")
        }
    }
}

void EPollPoller::updateChannel(Channel *pChannel)
{
    const int index = pChannel->index();
    if (index == kNew || index == kDeleted)
    {
        int fd = pChannel->fd();
        if (index == kNew)
        {
            m_channels[fd] = pChannel;
        }
        else
        {
            assert(m_channels.find(fd) != m_channels.end());
            assert(m_channels[fd] == pChannel);
        }

        pChannel->set_index(kAdded);
        update(EPOLL_CTL_ADD, pChannel);
    }
    else
    {
        int fd = pChannel->fd();
        assert(m_channels.find(fd) != m_channels.end());
        assert(m_channels[fd] == pChannel);
        assert(index == kAdded);

        if (pChannel->isNoneEvent())
        {
            update(EPOLL_CTL_DEL, pChannel);
            pChannel->set_index(kDeleted);
        }
        else
        {
            update(EPOLL_CTL_MOD, pChannel);
        }
    }
}

void EPollPoller::removeChannel(Channel *pChannel)
{
    int fd = pChannel->fd();
    assert(m_channels.find(fd) != m_channels.end());
    assert(m_channels[fd] == pChannel);
    assert(pChannel->isNoneEvent());
    int index = pChannel->index();
    assert(index == kAdded || index == kDeleted);
    size_t n = m_channels.erase(fd);
    (void)n;
    assert(n == 1);

    if (index == kAdded)
    {
        update(EPOLL_CTL_DEL, pChannel);
    }
    pChannel->set_index(kNew);
}

void EPollPoller::fillActiveChannels(int numEvents, ChannelList* activeChannels) const
{
    for (int i = 0; i < numEvents; i++)
    {
        Channel *pChannel = static_cast<Channel*>(events_[i].data.ptr);
#ifndef NDEBUG
        int fd = pChannel->fd();
        ChannelMap::const_iterator it = m_channels.find(fd);
        assert(it != m_channels.end());
        assert(it->second == pChannel);
#endif
        pChannel->set_revents(events_[i].events);
        activeChannels->push_back(pChannel);
    }
}

void EPollPoller::update(int operation, Channel *channel)
{
    int fd = channel->fd();
    struct epoll_event event;
    memset(&event, 0, sizeof(event));
    event.events = channel->events();
    event.data.fd = fd;
    event.data.ptr = channel;
    if (::epoll_ctl(epollfd_, operation, fd, &event) < 0)
    {
        LOGERROR("epoll_ctl() error:%d\n", errno);
    }
}