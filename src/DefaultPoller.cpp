#include <stdlib.h>

#include "../include/Poller.h"
#include "../include/EPollPoller.h"
#include "../include/Channel.h"

Poller* Poller::newDefaultPoller(Channel *pChannel)
{
    if (::getenv("MY_MUDUO_USE_POLL"))
    {
        // return new PollPoller();
    }
    else
    {
        return new EPollPoller(pChannel->ownerLoop());
    }

    return nullptr;
}