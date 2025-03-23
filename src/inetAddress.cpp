#include "../include/inetAddress.h"

#include <strings.h>
#include <sys/socket.h>
#include <arpa/inet.h>

InetAddress::InetAddress(uint16_t port, std::string ip /*= "127.0.0.1"*/)
{
    bzero(&addr_, sizeof(addr_));
    addr_.sin_family = AF_INET;
    addr_.sin_port = htons(port);
    addr_.sin_addr.s_addr = inet_addr(ip.c_str());
}

std::string InetAddress::toIP() const
{
    char buf[64] = {0};
    ::inet_ntop(AF_INET, &addr_.sin_addr, buf, sizeof(buf));
    return std::string(buf);
}

uint16_t InetAddress::toPort() const
{
    uint16_t port = ntohs(addr_.sin_port);
    return port;
}

std::string InetAddress::toIpPort() const
{
    return toIP() + ":" + std::to_string(toPort());
}