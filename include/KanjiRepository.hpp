// KanjiRepository.hpp
#ifndef KANJI_REPOSITORY_HPP
#define KANJI_REPOSITORY_HPP

#include <vector>
#include "kanji.hpp"
#include "SQLiteConnector.hpp"
#include "extractStrToVec.hpp"
#include <set>

struct KanjiEntry {
        Kanji kanji;
        int instrCounter;
        bool correct;
    };

class KanjiRepository {
public:

    static std::vector<Kanji> loadFromDatabase(const char* dbPath);

    static std::set<int> askedIndices;

    static Kanji getRandomKanji(const std::vector<Kanji>& kanjiVec);
    

    static void removeEntriesWithInstrCounter(std::vector<KanjiEntry>& entries, int valueToRemove);
    

};

#endif