#pragma once

#include <netinet/in.h>
#include <string>

class InetAddress
{
public:
    explicit InetAddress(uint16_t port, std::string ip = "127.0.0.1");
    explicit InetAddress(const struct sockaddr_in &addr) : addr_(addr) {}

public:
    std::string toIP() const;
    std::string toIpPort() const;
    uint16_t toPort() const;

    const struct sockaddr* getSockAddr() { return (struct sockaddr*)&addr_; }

private:
    struct sockaddr_in addr_;
};