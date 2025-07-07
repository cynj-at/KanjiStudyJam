#include "extractStrToVec.hpp"
#include <sstream>
#include <iostream>

std::vector<std::string> extractStrToVec(const std::string& inp_str) {
    std::string str = inp_str;
    str = str.substr(1, str.size() - 2);

    std::stringstream ss(str);
    std::vector<std::string> elements;
    std::string temp;

    while (getline(ss, temp, ',')) {
        temp.erase(0, temp.find_first_not_of(" \t\n\r"));
        temp.erase(temp.find_last_not_of(" \t\n\r") + 1);

        if (!temp.empty() && temp.front() == '"' && temp.back() == '"') {
            temp = temp.substr(1, temp.size() - 2);
        }

        elements.push_back(temp);
    }

    return elements;
}
