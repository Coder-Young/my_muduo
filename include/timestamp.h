#pragma once
#include <cstdint>
#include <string>

class TimeStamp
{
public:
    TimeStamp();
    explicit TimeStamp(int64_t _microSeconds);

public:
    static TimeStamp now();

    std::string to_string() const;

    static const int kMicroSecondsPerSecond = 1000 * 1000;
    
private:
    int64_t microSeconds;
};