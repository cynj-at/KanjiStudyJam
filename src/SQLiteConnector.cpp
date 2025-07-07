#include "SQLiteConnector.hpp"
#include <iostream>
#include <sqlite3.h>  // Pfad ggf. anpassen, z. B. <sqlite3/include/sqlite3.h>

std::vector<std::vector<std::string>> SQLiteConnector::openDatabase(const char* databasePath, const char* query) {
    std::vector<std::vector<std::string>> results;

    sqlite3* db;
    char* errMsg = nullptr;

    int rc = sqlite3_open(databasePath, &db);
    if (rc) {
        std::cerr << "Can't open database: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return results;
    } else {
        std::cout << "Opened database successfully" << std::endl;
    }

    sqlite3_stmt* stmt;
    rc = sqlite3_prepare_v2(db, query, -1, &stmt, NULL);
    if (rc != SQLITE_OK) {
        std::cerr << "SQL error: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return results;
    }

    while (sqlite3_step(stmt) == SQLITE_ROW) {
        std::vector<std::string> row;
        int columnCount = sqlite3_column_count(stmt);
        for (int i = 0; i < columnCount; ++i) {
            const unsigned char* text = sqlite3_column_text(stmt, i);
            if (text) {
                row.emplace_back(reinterpret_cast<const char*>(text));
            } else {
                row.emplace_back("NULL");
            }
        }
        results.push_back(row);
    }

    sqlite3_finalize(stmt);
    sqlite3_close(db);

    return results;
}
