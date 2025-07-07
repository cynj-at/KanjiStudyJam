#include "inputUtils.hpp"
#include <iostream>
#include <map>
#include "raylib.h"



namespace InputUtils {

    bool isDigitString(const char* str) {
        // Check if each character in the string is a digit
        for (int i = 0; str[i] != '\0'; i++) {
            if (!isdigit(str[i])) {
                return false;
            }
        }
        return true;
    };

    std::string toLowerCase(const std::string& str) {
        std::string result = "";
        for (char ch : str) {
            result += tolower(ch);
        }
        result.erase(std::remove_if(result.begin(), result.end(), [](char c) {
            return std::isspace(c) || c == '-' || c == '\'' || c == '.';
        }), result.end());
        return result;
    };

    bool checkKeyword(const Kanji& rand_kanji, const std::string& inp) {
        if (inp == "#"){
            return true;
        }else{
            std::string inp_low = toLowerCase(inp);
            const auto& keywords = rand_kanji.getKeywords();
            return std::any_of(keywords.begin(), keywords.end(), [&inp_low](const std::string& keyword) {
                return toLowerCase(keyword) == inp_low;
            });
        }
    };
    // german keyboard
    std::map<int, std::string> keyToChar = {
        {KEY_A, "a"}, {KEY_B, "b"}, {KEY_C, "c"}, {KEY_D, "d"}, {KEY_E, "e"},
        {KEY_F, "f"}, {KEY_G, "g"}, {KEY_H, "h"}, {KEY_I, "i"}, {KEY_J, "j"},
        {KEY_K, "k"}, {KEY_L, "l"}, {KEY_M, "m"}, {KEY_N, "n"}, {KEY_O, "o"},
        {KEY_P, "p"}, {KEY_Q, "q"}, {KEY_R, "r"}, {KEY_S, "s"}, {KEY_T, "t"},
        {KEY_U, "u"}, {KEY_V, "v"}, {KEY_W, "w"}, {KEY_X, "x"}, {KEY_Y, "z"},
        {KEY_Z, "y"}, {KEY_ZERO, "0"}, {KEY_ONE, "1"}, {KEY_TWO, "2"},
        {KEY_THREE, "3"}, {KEY_FOUR, "4"}, {KEY_FIVE, "5"}, {KEY_SIX, "6"},
        {KEY_SEVEN, "7"}, {KEY_EIGHT, "8"}, {KEY_NINE, "9"},
        {KEY_SPACE, " "}, {KEY_COMMA, ","}, {KEY_PERIOD, "."}, {KEY_SLASH, "-"},
        {KEY_SEMICOLON, ";"}, {KEY_EQUAL, "ß"}, {KEY_MINUS, "'"},
        {KEY_APOSTROPHE, "ä"}, {KEY_LEFT_BRACKET, "ü"}, {KEY_BACKSLASH, "#"},
        {KEY_RIGHT_BRACKET, "+"}, {KEY_GRAVE, "^"}, {KEY_BACKSPACE, "\b"}
    };
    std::string getCharFromKey(int key, bool shiftPressed){
        if (keyToChar.find(key) != keyToChar.end()) {
            std::string character = keyToChar[key];
            if (shiftPressed) {
                if (character[0] >= 'a' && character[0] <= 'z') {
                    character[0] = character[0] - 'a' + 'A';
                    return character;
                }
                if (character == "1") return "!";
                if (character == "2") return "\"";
                if (character == "3") return "§";
                if (character == "4") return "$";
                if (character == "5") return "%";
                if (character == "6") return "&";
                if (character == "7") return "/";
                if (character == "8") return "(";
                if (character == "9") return ")";
                if (character == "0") return "=";
                if (character == "-") return "_";
                if (character == "'") return "*";
                if (character == ",") return ";";
                if (character == ".") return ":";
                if (character == "#") return "'";
                if (character == "ß") return "?";
                if (character == "ä") return "Ä";
                if (character == "ü") return "Ü";
                if (character == "+") return "*";
                if (character == "^") return "°";
                return character;
            }
            return character;
        }
        return "";
    }
}
