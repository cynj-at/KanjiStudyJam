#ifndef SQLITE_CONNECTOR_HPP
#define SQLITE_CONNECTOR_HPP

#include <iostream>
#include <vector>
#include <string>
#include <sqlite3/include/sqlite3.h>

class SQLiteConnector {
public:
    static std::vector<std::vector<std::string>> openDatabase(const char* databasePath, const char* query);
};

std::vector<std::vector<std::string>> SQLiteConnector::openDatabase(const char* databasePath, const char* query) {
    std::vector<std::vector<std::string>> results;

    sqlite3* db;
    char* errMsg = 0;

    // Open the SQLite database file
    int rc = sqlite3_open(databasePath, &db);
    if (rc) {
        std::cerr << "Can't open database: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return results; // Return empty result set
    } else {
        std::cout << "Opened database successfully" << std::endl;
    }

    // Execute a query
    sqlite3_stmt* stmt;
    rc = sqlite3_prepare_v2(db, query, -1, &stmt, NULL);
    if (rc != SQLITE_OK) {
        std::cerr << "SQL error: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return results; // Return empty result set
    }

    // Fetch results
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        std::vector<std::string> row;
        // Handle each row of results here
        int columnCount = sqlite3_column_count(stmt);
        for (int i = 0; i < columnCount; ++i) {
            const unsigned char* text = sqlite3_column_text(stmt, i);
            if (text) {
                row.push_back(reinterpret_cast<const char*>(text));
            } else {
                row.push_back("NULL");
            }
        }
        results.push_back(row);
    }

    // Finalize the statement and close the database
    sqlite3_finalize(stmt);
    sqlite3_close(db);

    return results;
}

#endif // SQLITE_CONNECTOR_HPP
