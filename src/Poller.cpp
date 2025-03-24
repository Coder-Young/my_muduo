#include "../include/Poller.h"
#include "../include/Channel.h"

Poller::Poller(EventLoop *loop)
    : owerLoop(loop)
{
}

Poller::~Poller() = default;

bool Poller::hasChannel(Channel *pChannel) const
{
    ChannelMap::const_iterator it = m_channels.find(pChannel->fd());
    return it != m_channels.end() && it->second == pChannel;
}