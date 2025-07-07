// KanjiRepository.cpp
#include <vector>
#include "KanjiRepository.hpp"
#include <set>

std::vector<Kanji> KanjiRepository::loadFromDatabase(const char* dbPath) {
        //std::string databasePath = getResourcePath("kanji", "db");
        // const char* databasePath = "./db/kanji.db"; //databasePath.c_str();

        std::cout << "DB Path: " << dbPath << std::endl;
        const char* query = "SELECT * FROM All_Kanji_Rem_Double";
        SQLiteConnector connector;
        std::vector<std::vector<std::string>> results = connector.openDatabase(dbPath, query);
        std::vector<Kanji> Kanji_vec;

        for (const auto& row : results) {
            try {
                const int k_id = std::stoi(row[0]);
                const int k_heis_ind = std::stoi(row[1]);
                const std::string k_kanji = row[2];
                const std::string k_jlpt = row[3];
                const int k_freq = std::stoi(row[4]);
                const int k_strokes = std::stoi(row[5]);
                const std::vector<std::string> k_keywords = extractStrToVec(row[6]);
                const std::vector<std::string> k_parts = extractStrToVec(row[7]);
                const std::vector<std::string> k_onyomi = extractStrToVec(row[8]);
                const std::vector<std::string> k_kunyomi = extractStrToVec(row[9]);
                const std::vector<std::string> k_add_reading = extractStrToVec(row[10]);
                const std::string k_trad_form = row[11];
                const std::string k_classification = row[12];
                const std::string k_jouyou_grade = row[13];

                Kanji kanji(k_id, k_heis_ind, k_kanji, k_jlpt, k_freq, k_strokes, k_keywords, k_parts, k_onyomi, k_kunyomi, k_add_reading, k_trad_form, k_classification, k_jouyou_grade);
                Kanji_vec.push_back(kanji);
            } catch (const std::invalid_argument& e) {
                std::cerr << "Invalid argument: " << e.what() << std::endl;
                std::cerr << "Row: ";
                for (const auto& elem : row) {
                    std::cerr << elem << " ";
                }
                std::cerr << std::endl;
            } catch (const std::out_of_range& e) {
                std::cerr << "Out of range: " << e.what() << std::endl;
                std::cerr << "Row: ";
                for (const auto& elem : row) {
                    std::cerr << elem << " ";
                }
                std::cerr << std::endl;
            }
        }
        return Kanji_vec;
    };

std::set<int> KanjiRepository::askedIndices;

Kanji KanjiRepository::getRandomKanji(const std::vector<Kanji>& kanjiVec) {
    if (askedIndices.size() == kanjiVec.size()) {
        std::cerr << "All Kanji have been asked already!" << std::endl;
        exit(EXIT_FAILURE);
    }

    std::srand(static_cast<unsigned int>(std::time(nullptr)));
    int randomIndex;
    do {
        randomIndex = std::rand() % kanjiVec.size();
    } while (askedIndices.find(randomIndex) != askedIndices.end());
    askedIndices.insert(randomIndex);
    return kanjiVec[randomIndex];
};

void KanjiRepository::removeEntriesWithInstrCounter(std::vector<KanjiEntry>& entries, int valueToRemove) {
    // Use std::remove_if to move the elements to be removed to the end
    // and get an iterator to the new end of the vector
    auto newEnd = std::remove_if(entries.begin(), entries.end(),
                                 [valueToRemove](const KanjiEntry& entry) {
                                     return entry.instrCounter == valueToRemove;
                                 });
    // Use vector::erase to actually remove the elements
    entries.erase(newEnd, entries.end());
}