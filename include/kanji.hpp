#ifndef KANJI_HPP
#define KANJI_HPP

#include <iostream>
#include <vector>
#include <string>

class Kanji {
private:
    int id;
    int heis_ind;
    std::string kanji;
    std::string jlpt;
    int freq;
    int strokes;
    std::vector<std::string> keywords;
    std::vector<std::string> parts;
    std::vector<std::string> onyomi;
    std::vector<std::string> kunyomi;
    std::vector<std::string> add_reading;
    std::string trad_form;
    std::string classification;
    std::string jouyou_grade;

public:
    Kanji() 
            : id(0), heis_ind(0), kanji(""), jlpt(""), freq(0), strokes(0), 
            keywords(), parts(), onyomi(), kunyomi(), add_reading(), 
            trad_form(""), classification(""), jouyou_grade("") {
        }
    // Constructor declaration and definition
    Kanji(int _id, int _heis_ind, const std::string& _kanji, const std::string& _jlpt, int _freq, int _strokes, const std::vector<std::string>& _keywords, const std::vector<std::string>& _parts, const std::vector<std::string>& _onyomi, const std::vector<std::string>& _kunyomi, const std::vector<std::string>& _add_reading, const std::string& _trad_form, const std::string& _classification, const std::string& _jouyou_grade)
        : id(_id), heis_ind(_heis_ind), kanji(_kanji), jlpt(_jlpt), freq(_freq), strokes(_strokes), keywords(_keywords), parts(_parts), onyomi(_onyomi), kunyomi(_kunyomi), add_reading(_add_reading), trad_form(_trad_form), classification(_classification), jouyou_grade(_jouyou_grade) {
        // Constructor body (if any additional initialization is needed)
    }

    // Getter functions declaration and definition
    int getId() const {
        return id;
    }

    int getHeis_Ind() const {
        return heis_ind;
    }

    std::string getKanji() const {
        return kanji;
    }

    std::string getJlpt() const {
        return jlpt;
    }

    int getFreq() const {
        return freq;
    }

    int getStrokes() const {
        return strokes;
    }

    const std::vector<std::string>& getKeywords() const {
        return keywords;
    }

    const std::vector<std::string>& getParts() const {
        return parts;
    }

    const std::vector<std::string>& getOnyomi() const {
        return onyomi;
    }

    const std::vector<std::string>& getKunyomi() const {
        return kunyomi;
    }

    const std::vector<std::string>& getAddReading() const {
        return add_reading;
    }

    std::string getTradForm() const {
        return trad_form;
    }

    std::string getClassification() const {
        return classification;
    }

    std::string getJouyouGrade() const {
        return jouyou_grade;
    }
};

#endif // KANJI_HPP
