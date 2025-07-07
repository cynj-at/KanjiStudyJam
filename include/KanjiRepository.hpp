// KanjiRepository.hpp
#ifndef KANJI_REPOSITORY_HPP
#define KANJI_REPOSITORY_HPP

#include <vector>
#include "kanji.hpp"
#include "SQLiteConnector.hpp"
#include "extractStrToVec.hpp"

class KanjiRepository {
public:
    static std::vector<Kanji> loadFromDatabase(const char* dbPath);

};

#endif