#ifndef INPUT_UTILS_HPP
#define INPUT_UTILS_HPP

#include <string>
#include "kanji.hpp"

namespace InputUtils {

    bool isDigitString(const char* str);

    std::string toLowerCase(const std::string& str);

    bool checkKeyword(const Kanji& rand_kanji, const std::string& inp);

    std::string getCharFromKey(int key, bool shiftPressed);

}

#endif
