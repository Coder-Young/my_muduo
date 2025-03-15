#include "../include/timestamp.h"

#include <sys/time.h>    
#include <unistd.h>
#include <inttypes.h>

TimeStamp::TimeStamp() : microSeconds(0)
{

}

TimeStamp::TimeStamp(int64_t _microSeconds) 
            : microSeconds(_microSeconds)
{

}

TimeStamp TimeStamp::now()
{
    struct timeval tm;
    gettimeofday(&tm, NULL);
    int64_t sec = tm.tv_sec;
    return TimeStamp(sec * kMicroSecondsPerSecond + tm.tv_usec);
}

std::string TimeStamp::to_string() const
{
    char buf[32] = {0};
    int64_t sec = microSeconds / kMicroSecondsPerSecond;
    int64_t msec = microSeconds % kMicroSecondsPerSecond;
    // __STDC_FORMAT_MACROS
    snprintf(buf, sizeof(buf) - 1, 
        "%" PRId64 ".%06" PRId64 "", sec, msec);
    return buf;
}