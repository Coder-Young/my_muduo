#pragma once

#include "nocopyable.h"

#include <string>

#define LOGINFO(logmsgformat, ...) \
        do { \
            Logger *log = Logger::getInstance(); \
            log->setLevel(LOG_INFO); \
            char buf[1024]; \
            snprintf(buf, 1024, logmsgformat, ##__VA_ARGS__); \
            log->log(buf); \
        } while (0);

#define LOGERROR(logmsgformat, ...) \
        do { \
            Logger *log = Logger::getInstance(); \
            log->setLevel(LOG_ERROR); \
            char buf[1024]; \
            snprintf(buf, 1024, logmsgformat, ##__VA_ARGS__); \
            log->log(buf); \
        } while (0);

#define LOGFATAL(logmsgformat, ...) \
        do { \
            Logger *log = Logger::getInstance(); \
            log->setLevel(LOG_FATAL); \
            char buf[1024]; \
            snprintf(buf, 1024, logmsgformat, ##__VA_ARGS__); \
            log->log(buf); \
        } while (0);

#define LOGDEBUG(logmsgformat, ...) \
        do { \
            Logger *log = Logger::getInstance(); \
            log->setLevel(LOG_DEBUG); \
            char buf[1024]; \
            snprintf(buf, 1024, logmsgformat, ##__VA_ARGS__); \
            log->log(buf); \
        } while (0);

enum LOG_LEVEL
{
    LOG_NONE = 0,
    LOG_INFO,
    LOG_ERROR,
    LOG_FATAL,
    LOG_DEBUG,

    LOG_MAX
};

class Logger : nocopyable
{
public:
    static Logger* getInstance();

    bool setLevel(LOG_LEVEL level);

    void log(std::string log_msg);

private:
    Logger();
    ~Logger();

private:
    static Logger* m_instance;
    LOG_LEVEL m_level;
};