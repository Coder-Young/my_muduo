#include "../include/Channel.h"
//#include "../include/EventLoop.h"
#include "../include/logger.h"

#include <sys/epoll.h>
#include <cassert>

const int Channel::kNoneEvent = 0;
const int Channel::kReadEvent = EPOLLIN | EPOLLPRI;
const int Channel::kWriteEvent = EPOLLOUT;

Channel::Channel(EventLoop *loop, int fd)
    : loop_(loop),
      fd_(fd),
      events_(0),
      revents_(0),
      index_(-1),
      tied_(false),
      logHup_(false),
      eventHandling_(false),
      addedToLoop_(false)
{
    
}

Channel::~Channel()
{
    assert(!eventHandling_);
    assert(!addedToLoop_);
}

void Channel::tie(const std::shared_ptr<void> &obj)
{
    tie_ = obj;
    tied_ = true;
}

void Channel::update()
{
    // loop->updateChannel(this);
}

void Channel::remove()
{
    // loop->removeChannel(this);
}

void Channel::handleEvent(TimeStamp recv_time)
{
    std::shared_ptr<void> guard;
    if (tied_)
    {
        guard = tie_.lock();
        if (guard)
        {
            handleEventWithGuard(recv_time);
        }
    }
    else
    {
        handleEventWithGuard(recv_time);
    }
}

void Channel::handleEventWithGuard(TimeStamp recv_time)
{
    eventHandling_ = true;
    LOGINFO("handleEventWithGuard():revents:%d\n", revents_)
    if ((revents_ & EPOLLHUP) && !(revents_ & EPOLLIN))
    {
        if (closeCallBack) closeCallBack();
    }

    if (revents_ & EPOLLERR)
    {
        if (errorCallBack) errorCallBack();
    }

    if (revents_ & (EPOLLIN | EPOLLPRI | EPOLLRDHUP))
    {
        if (readCallBack) readCallBack(recv_time);
    }

    if (revents_ & EPOLLOUT)
    {
        if (writeCallBack) writeCallBack();
    }

    eventHandling_ = false;
}