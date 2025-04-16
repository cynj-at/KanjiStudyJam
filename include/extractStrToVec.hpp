#ifndef EXTRACT_STR_TO_VEC_HPP
#define EXTRACT_STR_TO_VEC_HPP

#include <vector>
#include <string>
#include <sstream>
#include <iostream>

std::vector<std::string> extractStrToVec(const std::string& inp_str) {
    //std::cout << inp_str;
    // Remove the leading "[" and trailing "]" characters
    std::string str = inp_str;
    str = str.substr(1, str.size() - 2);

    // Create a stringstream to extract elements
    std::stringstream ss(str);

    // Vector to store the elements
    std::vector<std::string> elements;

    // Temporary variable to hold each element
    std::string temp;

    // Extract elements separated by ","
    while (getline(ss, temp, ',')) {
        //std::cout << temp;
        // Remove leading and trailing whitespaces
        temp.erase(0, temp.find_first_not_of(" \t\n\r"));
        temp.erase(temp.find_last_not_of(" \t\n\r") + 1);
        //std::cout << temp;
        // Remove quotes if they exist
        if (temp.front() == '"' && temp.back() == '"') {
            temp = temp.substr(1, temp.size() - 2);
        }
        //std::cout << temp;

        // Add the element to the vector
        elements.push_back(temp);
    }

    return elements;
}

#endif // EXTRACT_STR_TO_VEC_HPP
