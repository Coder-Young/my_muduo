#include "../include/logger.h"
#include "../include/inetAddress.h"

#include <iostream>

void log_test()
{
    LOGINFO("sth wrong");
}

void addr_test()
{
    InetAddress addr(9090);
    std::cout << addr.toIP() << " " << addr.toPort() << " " << addr.toIpPort() << std::endl;
}

int main()
{
    log_test();
    addr_test();
    return 0;
}