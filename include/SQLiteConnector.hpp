#ifndef SQLITE_CONNECTOR_HPP
#define SQLITE_CONNECTOR_HPP

#include <vector>
#include <string>

class SQLiteConnector {
public:
    static std::vector<std::vector<std::string>> openDatabase(const char* databasePath, const char* query);
};

#endif // SQLITE_CONNECTOR_HPP
