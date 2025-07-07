#include "getterUtils.hpp"
#include <iostream>
#include <filesystem>
#include <CoreFoundation/CoreFoundation.h>
#include <limits.h>


namespace fs = std::filesystem;

namespace GetterUtils {
    std::string getCurrentWorkingDirectory() {
        try {
            return fs::current_path().string();
        } catch (const fs::filesystem_error& e){
            std::cerr << "Fehler beim Abrufen des aktuellen Verzeichnisses: " << e.what() << std::endl;
            return "";
        }
    };
    //old unix getcwd -> deprecated
    // Function to get the current working directory
    // std::string getCurrentWorkingDirectory() {
    //     char cwd[1024];
    //     if (getcwd(cwd, sizeof(cwd)) != nullptr) {
    //         return std::string(cwd);
    //     } else {
    //         perror("getcwd() error");
    //         return "";
    //     }
    // }

    std::string getResourcePath(const std::string& resourceName, const std::string& resourceType) {
        CFBundleRef bundle = CFBundleGetMainBundle();
        if (bundle) {
            CFStringRef name = CFStringCreateWithCString(NULL, resourceName.c_str(), kCFStringEncodingUTF8);
            CFStringRef type = CFStringCreateWithCString(NULL, resourceType.c_str(), kCFStringEncodingUTF8);
            CFURLRef resourceURL = CFBundleCopyResourceURL(bundle, name, type, NULL);
            CFRelease(name);
            CFRelease(type);

            if (resourceURL) {
                CFStringRef resourcePath = CFURLCopyFileSystemPath(resourceURL, kCFURLPOSIXPathStyle);
                CFRelease(resourceURL);
                if (resourcePath) {
                    char pathCStr[PATH_MAX];
                    if (CFStringGetCString(resourcePath, pathCStr, sizeof(pathCStr), kCFStringEncodingUTF8)) {
                        CFRelease(resourcePath);
                        return std::string(pathCStr);
                    }
                    CFRelease(resourcePath);
                }
            }
        }
        return "";
    };

    int getRandomNumber(int startValue, int endValue, int steps){
        std::vector<int> values;
        for (int i = startValue; i <= endValue; i+= steps){
            values.push_back(i);
        }
        // Seed the random number generator
        std::srand(static_cast<unsigned int>(std::time(nullptr)));
        // Pick a random index
        int random_index = std::rand() % values.size();
        // Return the value at the random index
        return values[random_index];
    }
}