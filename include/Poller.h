#ifndef POLLER_H_
#define POLLER_H_

#include <vector>
#include <unordered_map>

#include "nocopyable.h"
#include "timestamp.h"

class Channel;
class EventLoop;
class Poller : nocopyable
{
public:
    typedef std::vector<Channel*> ChannelList;

    Poller(EventLoop *loop);
    virtual ~Poller();

public: // IO复用统一接口
    virtual TimeStamp poll(int timeouts, ChannelList *activeChannels) = 0;
    virtual void updateChannel(Channel *pChannel) = 0;
    virtual void removeChannel(Channel *pChannel) = 0;

    virtual bool hasChannel(Channel *pChannel) const;

    static Poller* newDefaultPoller(Channel *pChannel);

protected:
    typedef std::unordered_map<int, Channel*> ChannelMap;
    ChannelMap m_channels;

private:
    EventLoop *owerLoop; // Poller所属事件循环
};

#endif