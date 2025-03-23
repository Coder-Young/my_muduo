#ifndef CHANNEL_H_
#define CHANNEL_H_

#include <functional>
#include <memory>

#include "timestamp.h"
#include "nocopyable.h"

class EventLoop;
class Channel : nocopyable
{
public:
    typedef std::function<void()> EventCallBack;
    typedef std::function<void(TimeStamp)> ReadEventCallBack;

    Channel(EventLoop *loop, int fd);
    ~Channel();

    void handleEvent(TimeStamp recv_time);

    void setReadCallBack(ReadEventCallBack cb) { readCallBack = cb; }
    void setWriteCallBack(EventCallBack cb) { writeCallBack = cb; }
    void setCloseCallBack(EventCallBack cb) { closeCallBack = cb; }
    void setErrorCallBack(EventCallBack cb) { errorCallBack = cb; }

    // 用于防止channel被手动remove后还在执行回调操作
    void tie(const std::shared_ptr<void>&);

    int fd() const { return fd_; }
    int events() const { return events_; }
    int set_revents(int events) { revents_ = events; }

    void enableReading() { events_ |= kReadEvent; update(); }
    void disableReading() { events_ &= ~kReadEvent; update(); }
    void enableWriting() { events_ |= kWriteEvent; update(); }
    void disableWriting() { events_ &= ~kWriteEvent; update(); }
    void disableAll() { events_ = kNoneEvent; update(); }

    bool isNoneEvent() const { return events_ == kNoneEvent; }
    bool isReading() const { return events_ & kReadEvent; }
    bool isWriting() const { return events_ & kWriteEvent; }

    int index() { return index_; }
    void set_index(int idx) { index_ = idx; }

    EventLoop* ownerLoop() { return loop_; }
    void remove();

private:
    void update();
    void handleEventWithGuard(TimeStamp recv_time);

private:
    static const int kNoneEvent;
    static const int kReadEvent;
    static const int kWriteEvent;

    EventLoop *loop_;
    const int fd_;
    int events_;
    int revents_;
    int index_;

    std::weak_ptr<void> tie_;
    bool tied_;
    bool logHup_;
    bool eventHandling_;
    bool addedToLoop_;

    ReadEventCallBack readCallBack;
    EventCallBack writeCallBack;
    EventCallBack closeCallBack;
    EventCallBack errorCallBack;
};

#endif