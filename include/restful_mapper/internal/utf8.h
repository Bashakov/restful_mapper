#ifndef UTF8_H_20130326
#define UTF8_H_20130326

#include <string>
#include <stdexcept>

std::string iconv_string(const std::string &value, const char *to, const char *from);
std::string local_to_utf8(const std::string &value);
std::string utf8_to_local(const std::string &value);

#endif // UTF8_H_20130326
