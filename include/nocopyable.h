#pragma once

class nocopyable
{
private:
    nocopyable(const nocopyable&) = delete;
    nocopyable& operator=(const nocopyable&) = delete;
public:
    nocopyable() = default;
    ~nocopyable() = default;
};