#include "../include/logger.h"
#include "../include/timestamp.h"

#include <iostream>

Logger* Logger::m_instance = nullptr;

Logger::Logger() {}

Logger* Logger::getInstance()
{
    if (m_instance == nullptr)
        m_instance = new Logger;
    return m_instance;
}

bool Logger::setLevel(LOG_LEVEL level)
{
    if (level <= LOG_NONE || level >= LOG_MAX)
    {
        return false;
    }

    m_level = level;
}

void Logger::log(std::string log_msg)
{
    switch(m_level)
    {
        case LOG_INFO:
        {
            std::cout << "[INFO]";
            break;
        }
        case LOG_ERROR:
        {
            std::cout << "[ERROR]";
            break;
        }
        case LOG_FATAL:
        {
            std::cout << "[FATAL]";
            break;
        }
        case LOG_DEBUG:
        {
            std::cout << "[DEBUG]";
            break;
        }
        default:
        {
            break;
        }
    }

    // 打印时间
    std::cout << "[" << TimeStamp::now().to_string() << "]" << log_msg << std::endl;
}