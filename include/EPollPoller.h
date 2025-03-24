#ifndef EPOLLPOLLER_H_
#define EPOLLPOLLER_H_

#include "Poller.h"

#include <vector>
#include <sys/epoll.h>

class Channel;
class EPollPoller : public Poller
{
public:
    EPollPoller(EventLoop *loop);
    ~EPollPoller() override;

public:
    TimeStamp poll(int timeouts, ChannelList *activeChannels) override;
    void updateChannel(Channel *pChannel) override;
    void removeChannel(Channel *pChannel) override;

private:
    void fillActiveChannels(int numEvents, ChannelList* activeChannels) const;
    void update(int operation, Channel *channel);

private:
    static const int kInitEventListSize = 16;

    typedef std::vector<struct epoll_event> EventList;
    int epollfd_;
    EventList events_;
};

#endif