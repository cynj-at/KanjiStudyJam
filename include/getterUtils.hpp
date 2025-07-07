#ifndef GETTER_UTILS_HPP
#define GETTER_UTILS_HPP

#include <string>

namespace GetterUtils {
    std::string getCurrentWorkingDirectory();

    std::string getResourcePath(const std::string& resourceName, const std::string& resourceType);

    int getRandomNumber(int startValue, int endValue, int steps);
}

#endif
