#include "raylib.h"
#include <iostream>
#include <vector>
#include <sstream>
#include <fstream>
#include <string>
#include <map>
#include <algorithm>
#include <cctype>
#include <ctime>
#include "SQLiteConnector.hpp"
#include "kanji.hpp"
#include "extractStrToVec.hpp"
#include "KanjiRepository.hpp"
#include <unistd.h>
#include <set>
#include "oscFunctions.hpp"
#include <thread>
#include <chrono>
#include <CoreFoundation/CoreFoundation.h>
#include <filesystem>

namespace fs = std::filesystem;

//globals
#define MAX_INPUT_CHARS_ROUND 4
#define MAX_INPUT_CHARS_MINSEC 2
#define MAX_KANJI_DEFAULT 2200
#define KANJI_TOTAL 3734

int ran = 2200;
bool showKeywords = true;


std::string getResourcePath(const std::string& resourceName, const std::string& resourceType) {
    CFBundleRef bundle = CFBundleGetMainBundle();
    if (bundle) {
        CFURLRef resourceURL = CFBundleCopyResourceURL(bundle, CFStringCreateWithCString(NULL, resourceName.c_str(), kCFStringEncodingUTF8), CFStringCreateWithCString(NULL, resourceType.c_str(), kCFStringEncodingUTF8), NULL);
        if (resourceURL) {
            CFStringRef resourcePath = CFURLCopyFileSystemPath(resourceURL, kCFURLPOSIXPathStyle);
            if (resourcePath) {
                std::string path(CFStringGetCStringPtr(resourcePath, kCFStringEncodingUTF8));
                CFRelease(resourcePath);
                CFRelease(resourceURL);
                return path;
            }
            CFRelease(resourceURL);
        }
    }
    return "";
}

Font kanjiFont;
static void DrawTextBoxed(Font font, const char *text, Rectangle rec, float fontSize, float spacing, bool wordWrap, Color tint); 

void DrawTextB(const char *txt, int x, int y, int fS, Color col)
{
    DrawTextEx(kanjiFont, txt, (Vector2){ static_cast<float>(x), static_cast<float>(y) }, static_cast<float>(fS), 1.0f, col);
}


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

//old unix getcwd
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


std::string getCurrentWorkingDirectory() {
    try {
        return fs::current_path().string();
    } catch (const fs::filesystem_error& e) {
        // Optional: Fehler ausgeben
        std::cerr << "Fehler beim Abrufen des aktuellen Verzeichnisses: " << e.what() << std::endl;
        return "";
    }
}


std::string GetCharFromKey(int key, bool shiftPressed) {
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




Kanji getRandomKanji(const std::vector<Kanji>& kanjiVec);
std::string toLowerCase(const std::string& str);
bool checkKeyword(const Kanji& rand_kanji, const std::string& inp);
std::set<int> askedIndices;

// load all Kanji into Vector
std::vector<Kanji> allKanji = KanjiRepository::loadFromDatabase("./db/kanji.db");



Kanji getRandomKanji(const std::vector<Kanji>& kanjiVec) {
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
}

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


std::string toLowerCase(const std::string& str) {
    std::string result = "";
    for (char ch : str) {
        result += tolower(ch);
    }
    result.erase(std::remove_if(result.begin(), result.end(), [](char c) {
        return std::isspace(c) || c == '-' || c == '\'' || c == '.';
    }), result.end());
    return result;
}

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
    
}

bool CheckMouseOver(Rectangle rect) {
    Vector2 mousePos = GetMousePosition();
    return (mousePos.x >= rect.x && mousePos.x <= rect.x + rect.width &&
            mousePos.y >= rect.y && mousePos.y <= rect.y + rect.height);
}

void DrawCenteredText(Font font, const char* text, int posX, int posY, int fontSize, Color color)
{
    Vector2 textSize = MeasureTextEx(font, text, fontSize, 0);

    float textPosX = posX - (textSize.x / 2);
    float textPosY = posY - (textSize.y / 2);

    DrawTextEx(font, text, { textPosX, textPosY }, fontSize, 0, color);
}


struct KanjiEntry {
    Kanji kanji;
    int instrCounter;
    bool correct;
};

void removeEntriesWithInstrCounter(std::vector<KanjiEntry>& entries, int valueToRemove) {
    // Use std::remove_if to move the elements to be removed to the end
    // and get an iterator to the new end of the vector
    auto newEnd = std::remove_if(entries.begin(), entries.end(),
                                 [valueToRemove](const KanjiEntry& entry) {
                                     return entry.instrCounter == valueToRemove;
                                 });

    // Use vector::erase to actually remove the elements
    entries.erase(newEnd, entries.end());
}


typedef struct {
    Rectangle bounds;
    Color normalColor;
    Color hoverColor;
    Color clickColor;
    const char *text;
} Button;

void DrawButton(Button button, int fntSize) {
    Vector2 mousePosition = GetMousePosition();
    bool isHover = CheckCollisionPointRec(mousePosition, button.bounds);
    bool isClick = isHover && IsMouseButtonPressed(MOUSE_LEFT_BUTTON);

    Color color = button.normalColor;
    if (isClick) color = button.clickColor;
    else if (isHover) color = button.hoverColor;

    Vector2 minusValue = MeasureTextEx(GetFontDefault(), button.text, fntSize, 0);

    DrawRectangleRec(button.bounds, color);
    DrawText(button.text, (button.bounds.x + ((button.bounds.width/2.0f)-(minusValue.x/2.0f))), (button.bounds.y + ((button.bounds.height/2.0f)-(minusValue.y)/2.0f)), fntSize, BLACK);
}

bool IsButtonPressed(Button button) {
    Vector2 mousePosition = GetMousePosition();
    return CheckCollisionPointRec(mousePosition, button.bounds) && IsMouseButtonPressed(MOUSE_LEFT_BUTTON);
}

bool isDigitString(const char* str) {
    // Check if each character in the string is a digit
    for (int i = 0; str[i] != '\0'; i++) {
        if (!isdigit(str[i])) {
            return false;
        }
    }
    return true;
}

int main() {

    std::string cwd = getCurrentWorkingDirectory();
    //std::cout << "Current Directory: " << cwd << std::endl;
    std::vector<Kanji> Kanji_obj = KanjiRepository::loadFromDatabase("./db/kanji.db");
    if (Kanji_obj.empty()) {
        std::cerr << "Error: Kanji_obj is empty or not initialized correctly!" << std::endl;
        exit(EXIT_FAILURE);
    }

    //std::string ttf_font = cwd + "/font/Unifontexmono-DYWdE.ttf";
    // std::string cust_font_path = getResourcePath("hiragino-kaku-gothic-pro-w3", "otf");

    // std::cout << "Custom Font: " << cust_font_path << std::endl;
    std::string ttf_font = cwd + "/font/hiragino-kaku-gothic-pro-w3.otf";

    const char* fontPath = ttf_font.c_str();

    
    // GUI setup
    int screenWidth = 1440; // 1680 normally
    int screenHeight = 720; // 1050 normally
    std::vector<Kanji> cor_Kanji;
    std::vector<Kanji> wro_Kanji;
    std::vector<KanjiEntry> all_Kanji;
    std::vector<Kanji> game_Kanji;
    std::string inputText = "";
    std::string resultText = "";
    bool inputCorrect = false;
    Color mainColor = RAYWHITE;
    Color finTextColor = DARKGRAY;
    const Color textColor = DARKGRAY;
    Kanji currentKanji;

    int fontSize = 32;
    int fontSizeKanji = 64;
    int counter = 0;
    int round = 0;
    int backspacePressedTime = 0;
    const int BACKSPACE_DELAY = 5;
    InitWindow(screenWidth, screenHeight, "Kanji Study Jam");
    ToggleFullscreen();

    if(IsWindowFullscreen()){
        screenHeight = GetMonitorHeight(GetCurrentMonitor());
        screenWidth = GetMonitorWidth(GetCurrentMonitor());
    }
    //std::cout << screenHeight << screenWidth << std::endl;


    Font kanjiFont = LoadFontEx(fontPath, 32, 0, 65535); 
    SetConfigFlags(FLAG_MSAA_4X_HINT | FLAG_VSYNC_HINT);
    SetTextureFilter(kanjiFont.texture, TEXTURE_FILTER_BILINEAR);

    int numberOfRounds = 0;
    bool numberOfRoundsNoDigit = false;
    int maxGameKanji = MAX_KANJI_DEFAULT;
    bool maxGameKanjiWrongValue = false;
    bool startGame = false;
    bool invalidRound = false;
    bool resultsWindow = false;
    Rectangle textBoxRounds = { (screenWidth / 2.0f) - (225/2), (screenHeight / 2.0f) - (50/2), 225, 50 };
    Rectangle answerBox = { (screenWidth / 2.0f) - (225/2), (screenHeight / 2.0f) - (50/2), 225, 50 };
    Rectangle gameKanjiBox = { (screenWidth / 4.0f) - (225/2), (screenHeight / 2.0f) - (50/2) - 200, 225, 50};
    bool mouseOnTextRounds = false;
    bool backspacePressedLastFrame = false;
    bool backspacePressedLastFrameMinute = false;
    bool backspacePressedLastFrameSecond = false;
    bool activeTextBox = false;
    bool roundBased = false;
    bool timeBased = false;
    bool startScreen = true;
    bool invalidMinutes = false;
    bool invalidSeconds = false;
    bool mouseOnCustomMinutes = false;
    bool customMinutesFieldActive = false;
    bool mouseOnCustomSeconds = false;
    bool customSecondFieldActive = false;
    bool gameKanjiBoxActive = false;
    bool mouseOverGameKanjiBox = false;
    bool showTimeMessage10 = false;
    bool showTimeMessage5 = false;
    bool showCustomTime = false;
    bool modeRound = false;
    bool modeTime = false;
    int customTime = 0;
    int roundCount = 0;
    int minuteCount = 0;
    int secondCount = 0;
    int gameKanjiCount = 0;
    char name[MAX_INPUT_CHARS_ROUND + 1] = "\0";
    char customMinutes[MAX_INPUT_CHARS_MINSEC + 1] = "\0";
    char customSeconds[MAX_INPUT_CHARS_MINSEC + 1] = "\0";
    char gameKanji[MAX_INPUT + 1] = "\0";
    int framesCounter = 0;
    float centerPosX;
    float centerPosY;
    centerPosX = screenWidth / 2.0f;
    centerPosY = screenHeight / 2.0f;
    const int maxItemsPerRow = 15; // result screen, max items
    const int itemSpacing = 55;    // horizontal spacing between items
    const int rowSpacing = 55;     // vertical spacing between rows
    int kanjiCounter = 0;
    int instrCounter = 0;
    int instrTotalCounter = 0;
    int eins, zwei, drei, vier, fuenf, sechs, sieben, acht, neun, zehn, elf, zwoelf, dreizehn, vierzehn, fuenfzehn, sechzehn = -1;
    int changeInstrValue;
    int note = -1;
    int jlpt;
    int noteLength = 0;
    int instrNumber;
    int wrongKanjiCounter = 0;
    int correctKanjiCounter = 0;
    int keyChangeTime;
    int keyChangeValue;
    int newKey = 0;
    int cutOffValue;
    int changeRhythm;
    int totalMinutes;
    int totalSeconds;
    float buttonWidth = 200;
    float buttonHeight = 50;
    Button roundBasedButton = { { (centerPosX/2.0f)-(buttonWidth/2.0f), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight }, LIGHTGRAY, DARKGRAY, GRAY, "Rounds" };
    Button timeBasedButton = { { (centerPosX+(centerPosX/2.0f))-(buttonWidth/2.0f), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight}, LIGHTGRAY, DARKGRAY, GRAY, "Time" };
    float playTime;

    
    finTextColor.a = 0;
    std::string finalText = "Thank you for listening!";
    float alphaFinText = 0.0f; // starting with fully transparent text
    const float increment = 1.0f / 10.0f; // increment alpha over 10 seconds
    bool oscSent = false;
    double startTimeFinText = 0.0;
    SetTargetFPS(60);
    time_t startTime = 0;

    while (!WindowShouldClose()) {

        if (IsKeyPressed(KEY_F10)) {
            ToggleFullscreen();
            if (IsWindowFullscreen()) {
                screenHeight = GetMonitorHeight(GetCurrentMonitor());
                screenWidth = GetMonitorWidth(GetCurrentMonitor());
            } else {
                screenHeight = 1050;
                screenWidth = 1680;
            }
            centerPosX = screenWidth / 2.0f;
            centerPosY = screenHeight / 2.0f;
        }

        if (!startGame && !resultsWindow && startScreen) {

            BeginDrawing();
            ClearBackground(RAYWHITE);

            DrawTextB("Choose game mode!", centerPosX - (MeasureTextEx(GetFontDefault(), "Choose game mode!", 40, 0).x / 2), centerPosY - 300, 40, GRAY);

            DrawButton(roundBasedButton, fontSize);
            if (IsButtonPressed(roundBasedButton)) {
                roundBased = true;
                startScreen = false;
            }
            DrawButton(timeBasedButton, fontSize);
            if (IsButtonPressed(timeBasedButton)) {
                timeBased = true;
                startScreen = false;
            }

            EndDrawing();
        }
        else if (roundBased && !startGame && !resultsWindow) {
            modeRound = true;
            if (CheckCollisionPointRec(GetMousePosition(), textBoxRounds)) {
                mouseOnTextRounds = true;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) {
                    activeTextBox = true;
                    gameKanjiBoxActive = false;
                }
            } else {
                mouseOnTextRounds = false;
            }
            if (CheckCollisionPointRec(GetMousePosition(), gameKanjiBox)) {
                mouseOverGameKanjiBox = true;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) {
                    gameKanjiBoxActive = true;
                    activeTextBox = false;
                }
            } else {
                mouseOverGameKanjiBox = false;
                
            }

            if (activeTextBox) {
                SetMouseCursor(MOUSE_CURSOR_IBEAM);

                int key = GetCharPressed();

                if (key != 0) {
                    invalidRound = false;
                    maxGameKanjiWrongValue = false;

                    if ((key >= KEY_ZERO && key <= KEY_NINE) && (roundCount < MAX_INPUT_CHARS_ROUND)) {
                        name[roundCount] = (char)key;
                        name[roundCount + 1] = '\0'; // null terminator
                        roundCount++;
                    }
                }

                if (IsKeyDown(KEY_BACKSPACE)) {
                    if (backspacePressedLastFrame == false) {
                        if (roundCount > 0) {
                            name[--roundCount] = '\0';
                        }
                        backspacePressedTime = 0;
                    } else {
                        if (backspacePressedTime > BACKSPACE_DELAY) {
                            if (roundCount > 0) {
                                name[--roundCount] = '\0';
                            }
                            backspacePressedTime = 0;
                        } else {
                            backspacePressedTime++;
                        }
                    }
                    backspacePressedLastFrame = true;
                } else {
                    backspacePressedLastFrame = false;
                }
            } else {
                SetMouseCursor(MOUSE_CURSOR_DEFAULT);
            }

            if (gameKanjiBoxActive) {
                SetMouseCursor(MOUSE_CURSOR_IBEAM);

                int key = GetCharPressed();

                if (key != 0) {
                    maxGameKanjiWrongValue = false;
                    invalidRound = false;

                    if ((key >= KEY_ZERO && key <= KEY_NINE) && (gameKanjiCount < MAX_INPUT_CHARS_ROUND)) {
                        gameKanji[gameKanjiCount] = (char)key;
                        gameKanji[gameKanjiCount + 1] = '\0'; // null terminator
                        gameKanjiCount++;
                    }
                }

                if (IsKeyDown(KEY_BACKSPACE)) {
                    if (backspacePressedLastFrame == false) {
                        if (gameKanjiCount > 0) {
                            gameKanji[--gameKanjiCount] = '\0';
                        }
                        backspacePressedTime = 0;
                    } else {
                        if (backspacePressedTime > BACKSPACE_DELAY) {
                            if (gameKanjiCount > 0) {
                                gameKanji[--gameKanjiCount] = '\0';
                            }
                            backspacePressedTime = 0;
                        } else {
                            backspacePressedTime++;
                        }
                    }
                    backspacePressedLastFrame = true;
                } else {
                    backspacePressedLastFrame = false;
                }
            } else {
                SetMouseCursor(MOUSE_CURSOR_DEFAULT);
            }

            if ((IsKeyPressed(KEY_ENTER) && activeTextBox) || (IsKeyPressed(KEY_ENTER) && gameKanjiBoxActive)) {
                numberOfRounds = atoi(name);
                std::cout << "Max Game Kanji: " << maxGameKanji << std::endl;
                if(gameKanjiCount != 0){
                    maxGameKanji = atoi(gameKanji);
                    if (maxGameKanji > KANJI_TOTAL){
                        maxGameKanjiWrongValue = true;
                    }
                }else{
                    maxGameKanji = MAX_KANJI_DEFAULT;
                }
                std::cout << numberOfRounds << " " << maxGameKanji << std::endl;


                
                // try {
                //     if (isDigitString(name)) {
                //         numberOfRounds = atoi(name);
                //     } else {
                //         throw std::invalid_argument("Input is not a valid digit string");
                //     }
                // } catch (const std::invalid_argument& e) {
                //     numberOfRoundsNoDigit = true;
                //     std::cerr << "Error: " << e.what() << std::endl;
                // }
                    
                // try {
                //     if (isDigitString(gameKanji)) {
                //         maxGameKanji = atoi(gameKanji);
                //     } else {
                //         throw std::invalid_argument("Input is not a valid digit string");
                //     }
                // } catch (const std::invalid_argument& e) {
                //     maxGameKanjiNoDigit = true;
                //     std::cerr << "Error: " << e.what() << std::endl;
                // }


                //std::cout << numberOfRounds << std::endl;
                // Countdown

                if (numberOfRounds >= 1 && numberOfRounds <= maxGameKanji) {
                    for (int i = 0; i < Kanji_obj.size(); i++){
                        if (Kanji_obj[i].getId() <= maxGameKanji){
                            game_Kanji.push_back(Kanji_obj[i]);
                        }
                    }
                    sendOSCReset(1);
                    currentKanji = getRandomKanji(game_Kanji);

                    std::cout << currentKanji.getKanji() << game_Kanji.size() << std::endl;
                    for (int i = 5; i > 0; --i) {
                        BeginDrawing();
                        ClearBackground(BLACK);

                        DrawText(TextFormat("%d", i), centerPosX - 32, centerPosY - 32, 64, GRAY);
                        EndDrawing();
                        std::cout << i << std::endl;
                        std::this_thread::sleep_for(std::chrono::seconds(1)); // Delay for 1 second
                    }
                    startGame = true;
                    std::cout << "Start Game set to true" << std::endl;
                    sendOSCNAutoStart(1);
                } else {
                    invalidRound = true;
                }
            }

            framesCounter++; // Increment frames counter for cursor blinking

            // Drawing
            BeginDrawing();
            ClearBackground(mainColor);

            std::string rowString = "Number of Rounds:";
            DrawTextB(rowString.c_str(), textBoxRounds.x, textBoxRounds.y - 80, fontSize, DARKGRAY);

            DrawRectangleRec(textBoxRounds, LIGHTGRAY);
            if ((mouseOnTextRounds && !gameKanjiBoxActive) || (activeTextBox && !gameKanjiBoxActive)){
                DrawRectangleLines((int)textBoxRounds.x, (int)textBoxRounds.y, (int)textBoxRounds.width, (int)textBoxRounds.height, RED);
                if (roundCount < MAX_INPUT_CHARS_ROUND) {
                    if (((framesCounter / 20) % 2) == 0) DrawText("_", (int)textBoxRounds.x + 8 + MeasureText(name, 40), (int)textBoxRounds.y + 12, 40, MAROON);
                } else {
                    DrawTextB("Backspace to delete...", textBoxRounds.x, textBoxRounds.y + -40, 20, GRAY);
                }
                
            } 
            else DrawRectangleLines((int)textBoxRounds.x, (int)textBoxRounds.y, (int)textBoxRounds.width, (int)textBoxRounds.height, DARKGRAY);

            

            std::string maxKanjiString = "Max Heisig Index (max 3743, default 2200):";
            DrawTextB(maxKanjiString.c_str(), gameKanjiBox.x, gameKanjiBox.y - 50, 20, DARKGRAY);

            DrawRectangleRec(gameKanjiBox, LIGHTGRAY);
            if ((mouseOverGameKanjiBox && !activeTextBox) || (gameKanjiBoxActive && !activeTextBox)){
                DrawRectangleLines((int)gameKanjiBox.x, (int)gameKanjiBox.y, (int)gameKanjiBox.width, (int)gameKanjiBox.height, RED);
                if (gameKanjiCount < MAX_INPUT_CHARS_ROUND) {
                    if (((framesCounter / 20) % 2) == 0) DrawText("_", (int)gameKanjiBox.x + 8 + MeasureText(gameKanji, 40), (int)gameKanjiBox.y + 12, 40, MAROON);
                } else {
                    DrawTextB("Backspace to delete...", gameKanjiBox.x, gameKanjiBox.y + -25, 20, GRAY);
                }

                
            } 
            else DrawRectangleLines((int)gameKanjiBox.x, (int)gameKanjiBox.y, (int)gameKanjiBox.width, (int)gameKanjiBox.height, DARKGRAY);


            DrawTextB(name, (int)textBoxRounds.x + 5, (int)textBoxRounds.y + 8, 40, MAROON);
            DrawTextB(TextFormat("Input: %i/%i", roundCount, MAX_INPUT_CHARS_ROUND), textBoxRounds.x, textBoxRounds.y + 65, 20, DARKGRAY);
            DrawTextB(gameKanji, (int)gameKanjiBox.x + 5, (int)gameKanjiBox.y + 8, 40, MAROON);
            DrawTextB(TextFormat("Input: %i/%i", gameKanjiCount, MAX_INPUT_CHARS_ROUND), gameKanjiBox.x, gameKanjiBox.y + 65, 20, DARKGRAY);

            if (gameKanjiCount > 0){
                    char formattedTextGameKanji[100];
                    snprintf(formattedTextGameKanji, sizeof(formattedTextGameKanji), "Max Heisig Index Set to %s", gameKanji);

                    
                    int textWidth = MeasureText(formattedTextGameKanji, 20);
                    DrawText(formattedTextGameKanji, centerPosX - textWidth / 2, centerPosY - 150, 20, RED);
                }else{
                    char formattedTextGameKanji[100];
                    snprintf(formattedTextGameKanji, sizeof(formattedTextGameKanji), "Max Heisig Index Set to %d", MAX_KANJI_DEFAULT);

                    
                    int textWidth = MeasureText(formattedTextGameKanji, 20);
                    DrawText(formattedTextGameKanji, centerPosX - textWidth / 2, centerPosY - 150, 20, RED);
                }

            DrawTextB("Type rounds and press Enter to start the game!", centerPosX - (MeasureTextEx(GetFontDefault(), "Type rounds and press Enter to start the game!", 20, 0).x / 2), centerPosY + 80, 20, GRAY);
            if (invalidRound) {
                DrawTextB(TextFormat("Please enter a valid number (between 1 and %d)", maxGameKanji) , textBoxRounds.x, centerPosY + 40, 20, RED);
                mouseOnTextRounds = false;
                while (roundCount > 0) {
                    name[--roundCount] = '\0';
                }
            }
            EndDrawing();
        } //timeBased
        else if (timeBased && !startGame && !resultsWindow){
            //HideCursor();

            static bool setTime = true;
            modeTime = true;

            if (setTime){
                
                Rectangle recCustomMinutes = {(centerPosX/2.0f)-(buttonWidth/2.0f) + ((buttonWidth + 50)*2), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight};
                if (CheckCollisionPointRec(GetMousePosition(), recCustomMinutes)){
                    mouseOnCustomMinutes = true;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)){
                        customSecondFieldActive = false;
                        gameKanjiBoxActive = false;
                        customMinutesFieldActive = true;
                        
                    }
                } else {
                    mouseOnCustomMinutes = false;
                }

                Rectangle recCustomSeconds = {(centerPosX/2.0f)-(buttonWidth/2.0f) + ((buttonWidth + 50)*3), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight};
                if(CheckCollisionPointRec(GetMousePosition(), recCustomSeconds)){
                    mouseOnCustomSeconds = true;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)){
                        customMinutesFieldActive = false;
                        gameKanjiBoxActive = false;
                        customSecondFieldActive = true;
                        
                    }
                } else {
                    mouseOnCustomSeconds = false;
                }

                if (CheckCollisionPointRec(GetMousePosition(), gameKanjiBox)){
                    mouseOverGameKanjiBox = true;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)){
                        customMinutesFieldActive = false;
                        customSecondFieldActive = false;
                        gameKanjiBoxActive = true;
                    }
                }

                if (gameKanjiBoxActive) {
                    SetMouseCursor(MOUSE_CURSOR_IBEAM);

                    int key = GetCharPressed();

                    if (key != 0) {
                        maxGameKanjiWrongValue = false;
                        invalidRound = false;

                        if ((key >= KEY_ZERO && key <= KEY_NINE) && (gameKanjiCount < MAX_INPUT_CHARS_ROUND)) {
                            gameKanji[gameKanjiCount] = (char)key;
                            gameKanji[gameKanjiCount + 1] = '\0'; // null terminator
                            gameKanjiCount++;
                        }
                    }

                    if (IsKeyDown(KEY_BACKSPACE)) {
                        if (backspacePressedLastFrame == false) {
                            if (gameKanjiCount > 0) {
                                gameKanji[--gameKanjiCount] = '\0';
                            }
                            backspacePressedTime = 0;
                        } else {
                            if (backspacePressedTime > BACKSPACE_DELAY) {
                                if (gameKanjiCount > 0) {
                                    gameKanji[--gameKanjiCount] = '\0';
                                }
                                backspacePressedTime = 0;
                            } else {
                                backspacePressedTime++;
                            }
                        }
                        backspacePressedLastFrame = true;
                    } else {
                        backspacePressedLastFrame = false;
                    }
                } else {
                    SetMouseCursor(MOUSE_CURSOR_DEFAULT);
                }

                if (customMinutesFieldActive) {
                    showTimeMessage10 = false;
                    showTimeMessage5 = false;
                    showCustomTime = true;

                    SetMouseCursor(MOUSE_CURSOR_IBEAM);

                    int key = GetCharPressed();

                    if (key != 0) {
                        invalidMinutes = false;

                        if ((key >= KEY_ZERO && key <= KEY_NINE) && (minuteCount < MAX_INPUT_CHARS_MINSEC)) {
                            customMinutes[minuteCount] = (char)key;
                            customMinutes[minuteCount + 1] = '\0';
                            minuteCount++;
                        }
                    }

                    if (IsKeyDown(KEY_BACKSPACE)) {
                        if (!backspacePressedLastFrameMinute) {
                            if (minuteCount > 0) {
                                customMinutes[--minuteCount] = '\0';
                            }
                            backspacePressedTime = 0;
                        } else {
                            if (backspacePressedTime > BACKSPACE_DELAY) {
                                if (minuteCount > 0) {
                                    customMinutes[--minuteCount] = '\0';
                                }
                                backspacePressedTime = 0;
                            } else {
                                backspacePressedTime++;
                            }
                        }
                        backspacePressedLastFrameMinute = true;
                    } else {
                        backspacePressedLastFrameMinute = false;
                    }
                } else if (customSecondFieldActive){
                    SetMouseCursor(MOUSE_CURSOR_IBEAM);
                    showTimeMessage10 = false;
                    showTimeMessage5 = false;
                    showCustomTime = true;

                    int key = GetCharPressed();

                    if (key != 0) {
                        invalidSeconds = false;

                        if ((key >= KEY_ZERO && key <= KEY_NINE) && (secondCount < MAX_INPUT_CHARS_MINSEC)) {
                            customSeconds[secondCount] = (char)key;
                            customSeconds[secondCount + 1] = '\0';
                            secondCount++;
                        }
                    }

                    if (IsKeyDown(KEY_BACKSPACE)) {
                        if (!backspacePressedLastFrameSecond) {
                            if (secondCount > 0) {
                                customSeconds[--secondCount] = '\0';
                            }
                            backspacePressedTime = 0;
                        } else {
                            if (backspacePressedTime > BACKSPACE_DELAY) {
                                if (secondCount > 0) {
                                    customSeconds[--secondCount] = '\0';
                                }
                                backspacePressedTime = 0;
                            } else {
                                backspacePressedTime++;
                            }
                        }
                        backspacePressedLastFrameSecond = true;
                    } else {
                        backspacePressedLastFrameSecond = false;
                    }
                } else {
                    SetMouseCursor(MOUSE_CURSOR_DEFAULT);
                }

                
                

                framesCounter++;

                BeginDrawing();
                ClearBackground(mainColor);
                

                Button time5Button = {{(centerPosX/2.0f)-(buttonWidth/2.0f), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight}, LIGHTGRAY, DARKGRAY, GRAY, "5min"};
                DrawButton(time5Button, fontSize);
                Button time10Button = {{(centerPosX/2.0f)-(buttonWidth/2.0f) + (buttonWidth + 50), (centerPosY)-(buttonHeight/2.0f), buttonWidth, buttonHeight}, LIGHTGRAY, DARKGRAY, GRAY, "10min"};
                DrawButton(time10Button, fontSize);
                DrawRectangleRec(recCustomMinutes, LIGHTGRAY);

                DrawRectangleRec(recCustomMinutes, LIGHTGRAY);
                if (mouseOnCustomMinutes || customMinutesFieldActive) DrawRectangleLines((int)recCustomMinutes.x, (int)recCustomMinutes.y, (int)recCustomMinutes.width, (int)recCustomMinutes.height, RED);
                else DrawRectangleLines((int)recCustomMinutes.x, (int)recCustomMinutes.y, (int)recCustomMinutes.width, (int)recCustomMinutes.height, DARKGRAY);

                DrawRectangleRec(recCustomSeconds, LIGHTGRAY);
                if (mouseOnCustomSeconds || customSecondFieldActive) DrawRectangleLines((int)recCustomSeconds.x, (int)recCustomSeconds.y, (int)recCustomSeconds.width, (int)recCustomSeconds.height, RED);
                else DrawRectangleLines((int)recCustomSeconds.x, (int)recCustomSeconds.y, (int)recCustomSeconds.width, (int)recCustomSeconds.height, DARKGRAY);

                DrawTextB(customMinutes, (int)recCustomMinutes.x + 5, (int)recCustomMinutes.y + 8, 40, MAROON);
                DrawTextB(TextFormat("Minutes: %i/%i", minuteCount, MAX_INPUT_CHARS_MINSEC), recCustomMinutes.x, recCustomMinutes.y + 55, 20, DARKGRAY);

                DrawTextB(customSeconds, (int)recCustomSeconds.x + 5, (int)recCustomSeconds.y + 8, 40, MAROON);
                DrawTextB(TextFormat("Seconds: %i/%i", secondCount, MAX_INPUT_CHARS_MINSEC), recCustomSeconds.x, recCustomSeconds.y + 55, 20, DARKGRAY);

                if (minuteCount < MAX_INPUT_CHARS_MINSEC) {
                    if (customMinutesFieldActive){
                        if (((framesCounter / 20) % 2) == 0) DrawText("_", (int)recCustomMinutes.x + 8 + MeasureText(customMinutes, 40), (int)recCustomMinutes.y + 12, 40, MAROON);
                    }
                    
                } else {
                    DrawTextB("Backspace to delete...", recCustomMinutes.x , recCustomMinutes.y - 40, 20, GRAY);
                }

                if (secondCount < MAX_INPUT_CHARS_MINSEC) {
                    if (customSecondFieldActive){
                        if (((framesCounter / 20) % 2) == 0) DrawText("_", (int)recCustomSeconds.x + 8 + MeasureText(customSeconds, 40), (int)recCustomSeconds.y + 12, 40, MAROON);
                    }
                    
                } else {
                    DrawTextB("Backspace to delete...", recCustomSeconds.x, recCustomSeconds.y - 40, 20, GRAY);
                }

                DrawTextB("Either choose or type minutes/seconds and press Enter to start the game!", centerPosX - (MeasureTextEx(GetFontDefault(), "Either choose or type minutes/seconds and press Enter to start the game!", 40, 0).x / 2), centerPosY-400, 40, GRAY);

                std::string maxKanjiString = "Max Heisig Index (max 3743, default 2200):";
                DrawTextB(maxKanjiString.c_str(), gameKanjiBox.x, gameKanjiBox.y - 50, 20, DARKGRAY);

                DrawRectangleRec(gameKanjiBox, LIGHTGRAY);
                if ((mouseOverGameKanjiBox && !activeTextBox) || (gameKanjiBoxActive && !activeTextBox)){
                    DrawRectangleLines((int)gameKanjiBox.x, (int)gameKanjiBox.y, (int)gameKanjiBox.width, (int)gameKanjiBox.height, RED);
                    if (gameKanjiCount < MAX_INPUT_CHARS_ROUND) {
                        if (((framesCounter / 20) % 2) == 0) DrawText("_", (int)gameKanjiBox.x + 8 + MeasureText(gameKanji, 40), (int)gameKanjiBox.y + 12, 40, MAROON);
                    } else {
                        DrawTextB("Backspace to delete...", gameKanjiBox.x, gameKanjiBox.y + -25, 20, GRAY);
                    }

                    
                } 
                else DrawRectangleLines((int)gameKanjiBox.x, (int)gameKanjiBox.y, (int)gameKanjiBox.width, (int)gameKanjiBox.height, DARKGRAY);

                DrawTextB(gameKanji, (int)gameKanjiBox.x + 5, (int)gameKanjiBox.y + 8, 40, MAROON);
                DrawTextB(TextFormat("Input: %i/%i", gameKanjiCount, MAX_INPUT_CHARS_ROUND), gameKanjiBox.x, gameKanjiBox.y + 65, 20, DARKGRAY);


                if (showTimeMessage10){
                        DrawTextB("Time set to 10 minutes!", centerPosX - MeasureTextEx(GetFontDefault(), "Time set to 10 minutes!", 20, 0).x / 2, centerPosY - 300, 20, RED);
                    }
                if (showTimeMessage5){
                        DrawTextB("Time set to 5 minutes!", centerPosX - MeasureTextEx(GetFontDefault(), "Time set to 5 minutes!", 20, 0).x / 2, centerPosY - 300, 20, RED);
                    }
                if (showCustomTime){
                    char formattedTextCustomTime[100];
                    snprintf(formattedTextCustomTime, sizeof(formattedTextCustomTime), "Time set to %s minutes and %s seconds!", customMinutes, customSeconds);

                    int textWidth = MeasureText(formattedTextCustomTime, 20);
                    DrawText(formattedTextCustomTime, centerPosX - textWidth / 2, centerPosY - 300, 20, RED);
                }
                if (showTimeMessage10 || showTimeMessage5 || showCustomTime){
                    DrawTextB("Press Enter to start!", centerPosX - MeasureTextEx(GetFontDefault(), "Press Enter to start!", 20, 0).x /2, centerPosY - 200, 20, RED);
                }
                if (invalidMinutes) {
                    DrawTextB("Please enter valid minutes (1 to 99)", centerPosX, centerPosY + 100, 20, RED);
                    mouseOnCustomMinutes = false;
                    while (minuteCount > 0) {
                        customMinutes[--minuteCount] = '\0';
                    }
                }
                if (invalidSeconds) {
                    DrawTextB("Please enter valid seconds (1 to 59)", centerPosX, centerPosY + 120, 20, RED);
                    mouseOnCustomSeconds = false;
                    while (secondCount > 0) {
                        customSeconds[--secondCount] = '\0';
                    }
                }
                if (maxGameKanjiWrongValue){
                    DrawTextB("Please enter a valid Kanji Index!", gameKanjiBox.x, gameKanjiBox.y + 200, 20, RED);
                    while (gameKanjiCount > 0){
                        gameKanji[--gameKanjiCount] = '\0';
                    }
                }

                if (gameKanjiCount > 0){
                    char formattedTextGameKanji[100];
                    snprintf(formattedTextGameKanji, sizeof(formattedTextGameKanji), "Max Heisig Index Set to %s", gameKanji);

                    int textWidth = MeasureText(formattedTextGameKanji, 20);
                    DrawText(formattedTextGameKanji, centerPosX - textWidth / 2, centerPosY - 150, 20, RED);
                }else{
                    char formattedTextGameKanji[100];
                    snprintf(formattedTextGameKanji, sizeof(formattedTextGameKanji), "Max Heisig Index Set to %d", MAX_KANJI_DEFAULT);

                    int textWidth = MeasureText(formattedTextGameKanji, 20);
                    DrawText(formattedTextGameKanji, centerPosX - textWidth / 2, centerPosY - 150, 20, RED);
                }

                if (IsButtonPressed(time10Button)){
                    while (minuteCount > 0) {
                        customMinutes[--minuteCount] = '\0';
                    }
                    while (secondCount > 0) {
                        customSeconds[--secondCount] = '\0';
                    }
                    mouseOnCustomMinutes = false;
                    mouseOnCustomSeconds = false;
                    playTime = 600.0;
                    customMinutesFieldActive = false;
                    customSecondFieldActive = false;
                    showTimeMessage5 = false;
                    showCustomTime = false;
                    showTimeMessage10 = true;

                    
                    
                }
                if (IsButtonPressed(time5Button)){
                    while (minuteCount > 0) {
                        customMinutes[--minuteCount] = '\0';
                    }
                    while (secondCount > 0) {
                        customSeconds[--secondCount] = '\0';
                    }
                    mouseOnCustomMinutes = false;
                    mouseOnCustomSeconds = false;
                    playTime = 300.0;
                    
                    customMinutesFieldActive = false;
                    customSecondFieldActive = false;
                    showTimeMessage10 = false;
                    showCustomTime = false;
                    showTimeMessage5 = true;
                    
                    
                }
                if (IsKeyPressed(KEY_ENTER) && (customMinutesFieldActive || customSecondFieldActive || showCustomTime)){
                    totalMinutes = atoi(customMinutes);
                    totalSeconds = atoi(customSeconds);
                    //std::cout << "Max Game Kanji: " << maxGameKanji << std::endl;
                    if(gameKanjiCount != 0){
                        maxGameKanji = atoi(gameKanji);
                        if (maxGameKanji > KANJI_TOTAL){
                            maxGameKanjiWrongValue = true;
                        }
                    }else{
                        maxGameKanji = MAX_KANJI_DEFAULT;
                    }
                    // Countdown
                    if (totalMinutes > 0 && totalMinutes <= 99 && totalSeconds >= 0 && totalSeconds <= 59) {
                        playTime = totalMinutes*60 + totalSeconds;
                        setTime = false;
                    } else if (!customMinutesFieldActive || !customSecondFieldActive){
                        invalidMinutes = true;
                        invalidSeconds = true;
                    }

                    std::cout << "Minutes: " << totalMinutes<< "\nSeconds: " <<  totalSeconds << "\nMax Kanji: " << maxGameKanji << std::endl;
                }
                if (IsKeyPressed(KEY_ENTER) && (showTimeMessage10 || showTimeMessage5)){
                    std::cout << "Max Game Kanji: " << maxGameKanji << std::endl;
                    if(gameKanjiCount != 0){
                        maxGameKanji = atoi(gameKanji);
                        if (maxGameKanji > KANJI_TOTAL){
                            maxGameKanjiWrongValue = true;
                        }
                    }else{
                        maxGameKanji = MAX_KANJI_DEFAULT;
                    }
                    setTime = false;
                    // std::cout << "Minutes: " << totalMinutes << "Seconds: " << totalSeconds << "Kanji: " << maxGameKanji << std::endl;
                }

                EndDrawing();

            }else{
                if (IsKeyPressed(KEY_ENTER)){
                    //maxGameKanji = MAX_KANJI_DEFAULT;
                    //std::cout << playTime << std::endl;
                    for (int i = 0; i < Kanji_obj.size(); i++){
                        if (Kanji_obj[i].getId() <= maxGameKanji){
                            game_Kanji.push_back(Kanji_obj[i]);
                        }
                    }

                    sendOSCReset(1);
                    currentKanji = getRandomKanji(game_Kanji);
                    for (int i = 5; i > 0; --i) {
                        BeginDrawing();
                        ClearBackground(BLACK);
                        
                        DrawText(TextFormat("%d", i), centerPosX - 32, centerPosY - 32, 64, GRAY);
                        EndDrawing();
                        std::cout << i << std::endl;
                        std::this_thread::sleep_for(std::chrono::seconds(1));
                    }
                    startTime = time(NULL);
                    startGame = true;
                    std::cout << "Start Game set to true" << std::endl;
                    sendOSCNAutoStart(1);
                }
                BeginDrawing();
                ClearBackground(BLACK);
                DrawTextB("Press Enter to start studying!", centerPosX - (MeasureTextEx(GetFontDefault(), "Press Enter to start studying!", 32, 0).x / 2), centerPosY - (MeasureTextEx(GetFontDefault(), "Press Enter to start studying!", 32, 0).y / 2), 32, GRAY);
                EndDrawing();
            }
        }
        else if (startGame) {
            HideCursor();
            //std::cout << "Enter Game" << std::endl;
            time_t currentTime;
            double elapsedTime;
            std::stringstream timeStream;
            std::string timeStr;
            if (modeTime){
                currentTime = time(NULL);
                elapsedTime = difftime(currentTime, startTime);
                if (elapsedTime >= playTime) {
                startGame = false;
                resultsWindow = true;
                }

                double remainingTime = playTime - elapsedTime;
                int minutes = static_cast<int>(remainingTime) / 60;
                int seconds = static_cast<int>(remainingTime) % 60;

                
                timeStream << "Time: " << minutes << ":" << (seconds < 10 ? "0" : "") << seconds;
                timeStr = timeStream.str();
            }
            

            bool shiftPressed = IsKeyDown(KEY_LEFT_SHIFT) || IsKeyDown(KEY_RIGHT_SHIFT);
            int key = GetKeyPressed();
            
            if (IsKeyDown(KEY_BACKSPACE)) {
                if (backspacePressedLastFrame == false){

                    if(inputText.size()>0){
                        inputText.pop_back();
                    }
                    backspacePressedTime = 0;
                    
                }
                else {
                    if (backspacePressedTime > BACKSPACE_DELAY && !inputText.empty()) {
                        if (inputText.size()>0){
                            inputText.pop_back();
                        }
                        backspacePressedTime = 0;
                    
                }else {
                    backspacePressedTime++;
                }
                } 
                backspacePressedLastFrame = true;
                
            } else {
                backspacePressedLastFrame = false;
            }

            if ((key >= 32 && key <= 126) || key == KEY_ENTER) {
                if (key == KEY_ENTER) {
                    if (!inputText.empty()) {
                        std::cout << "Kanji Counter: " << kanjiCounter << "Instr Counter: " << instrCounter << std::endl;
                        std::string curJlpt = currentKanji.getJlpt();
                        std::cout << curJlpt << std::endl;
                        int curStrokeCnt = currentKanji.getStrokes();
                        const std::vector<std::string>& curParts = currentKanji.getParts();

                        size_t partsLength = curParts.size();

                        if(kanjiCounter % 8 == 0){ // 8 Kanji = 1 Instrument
                            
                            instrCounter ++;
                            instrTotalCounter ++;
                            switch (instrCounter)
                            {
                            case 14:
                                if (wro_Kanji.size()>5){
                                    removeEntriesWithInstrCounter(all_Kanji, 1);
                                    instrCounter = 1;
                                }
                                break;
                            case 15:
                                if (wro_Kanji.size()>10){
                                    removeEntriesWithInstrCounter(all_Kanji, 2);
                                    instrCounter = 2;
                                }
                            default:
                                break;
                            }
                            if (instrCounter == 14 && wro_Kanji.size() > 5){
                                instrCounter = 1;
                            }
                            
                            eins = zwei = drei = vier = fuenf = sechs = sieben = acht = neun = zehn = elf = zwoelf = dreizehn = vierzehn = fuenfzehn = sechzehn = -1;
                            jlpt = 0;
                            int indx = currentKanji.getId();
                            int freq = currentKanji.getFreq();
                            if(indx <= 275){
                                instrNumber = 0;
                            }else if(indx > 275 && indx <= 550){
                                instrNumber = 1;
                            }else if(indx > 550 && indx <= 825){
                                instrNumber = 2;
                            }else if(indx > 825 && indx <= 1100){
                                instrNumber = 3;
                            }else if(indx > 1100 && indx <= 1375){
                                instrNumber = 4;
                            }else if(indx > 1375 && indx <= 1650){
                                instrNumber = 5;
                            }else if(indx > 1650 && indx <= 1925){
                                instrNumber = 6;
                            }else if(indx > 1925 && indx <= 2200){
                                instrNumber = 7;
                            }else{
                                std::cout << "Value Error. Wrong Index. Instr set to 0." << std::endl;
                                instrNumber = 0;
                            }
                            if (curJlpt == "NULL") {
                                jlpt = 0;
                            } else {
                                
                                curJlpt.erase(std::remove_if(curJlpt.begin(), curJlpt.end(), [](char c) {
                                    return std::isspace(c) || c == 'N';
                                }), curJlpt.end());

                                
                                std::cout << "Cleaned string: " << curJlpt << std::endl;
                                try {
                                    jlpt = std::stoi(curJlpt);
                                } catch (const std::invalid_argument& e) {
                                    std::cerr << "Invalid argument: " << e.what() << std::endl;
                                    jlpt = -1; //set default
                                } catch (const std::out_of_range& e) {
                                    std::cerr << "Out of range: " << e.what() << std::endl;
                                    jlpt = -1; //set default
                                }
                            }
                            std::cout << jlpt << std::endl;
                            switch (jlpt){
                                case 1:
                                    noteLength = 0;
                                    break;
                                case 2:
                                case 3:
                                    noteLength = 1;
                                    break;
                                case 4:
                                case 5:
                                    noteLength = 2;
                                    break;
                                case 0:
                                    noteLength = 2;
                                    break;
                            }
                            sendOSCInstr(instrCounter, instrNumber);
                            sendOSCNoteLength(instrCounter, noteLength);
                        }

                        if (curStrokeCnt >= 15){
                            cutOffValue = getRandomNumber(600, 12000, 50);
                            sendOSCNCutOffChange(cutOffValue, 5000);
                        }

                        if (inputText == "#"){
                            inputCorrect = true;
                            resultText = "Cheater!";

                        }else{
                            inputCorrect = checkKeyword(currentKanji, inputText);
                            resultText = inputCorrect ? "Correct!" : "Incorrect!";
                        }
                        
                        // std::cout << mainColor.r << mainColor.g << mainColor.b << std::endl;

                        

                        
                        if (inputCorrect) {

                                if (curJlpt == "NULL") {
                                    keyChangeValue = getRandomNumber(-800, 800, 50);
                                    while(keyChangeValue == newKey){
                                            keyChangeValue = getRandomNumber(-800, 800, 50);
                                    }
                                    newKey = keyChangeValue;
                                    std::cout << keyChangeValue << ", " << newKey << std::endl;
                                    std::cout << "KeyChangeValue: " << keyChangeValue << std::endl;
                                }
                                //not working correctly
                                // if (mainColor.r != 245) {
                                //     mainColor.r += 5;
                                //     mainColor.g += 5;
                                //     mainColor.b += 5;
                                // }

                                switch (static_cast<int>(partsLength)){
                                case 1:
                                    note = 48;
                                    break;
                                case 2:
                                    note = 52;
                                    break;
                                case 3:
                                    note = 55;
                                    break;
                                case 4:
                                    note = 59;
                                    break;
                                case 5:
                                    note = 62;
                                    break;
                                case 6:
                                    note = 66;
                                    break;
                                case 7:
                                    note = 69;
                                    break;
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                    note = 71;
                                    break;
                                default:
                                    note = -1;
                                    break;
                            }

                            switch (curStrokeCnt){
                                //group 1
                                case 11:
                                case 3:
                                case 20:
                                case 23:
                                    if(eins == -1){
                                        eins = note;
                                    }else{
                                        zwei = note;
                                    }
                                    
                                    break;
                                //group 2
                                case 10:
                                case 18:
                                case 21:
                                case 1:
                                    if(drei == -1){
                                        drei = note;
                                    }else{
                                        vier = note;
                                    }
                                    
                                    break;
                                //group 3
                                case 12:
                                case 17:
                                case 2:
                                case 29:
                                //group 4
                                    if(fuenf == -1){
                                        fuenf = note;
                                    }else{
                                        sechs = note;
                                    }
                                    
                                    break;
                                case 8:
                                case 4:
                                    if(sieben == -1){
                                        sieben = note;
                                    }else{
                                        acht = note;
                                    }
                                    break;
                                //group 5
                                case 9:
                                case 16:
                                    if(neun == -1){
                                        neun = note;
                                    }else{
                                        zehn = note;
                                    }
                                    break;
                                //group 6
                                case 13:
                                case 5:
                                    if(elf == -1){
                                        elf = note;
                                    }else{
                                        zwoelf = note;
                                    }
                                    break;
                                //group 7
                                case 7:
                                case 14:    
                                    if(dreizehn == -1){
                                        dreizehn = note;
                                    }else{
                                        vierzehn = note;
                                    }
                                    break;
                                //group 8
                                case 15:
                                case 6:
                                case 19:
                                case 22:
                                    if(fuenfzehn == -1){
                                        fuenfzehn = note;
                                    }else{
                                        sechzehn = note;
                                    }
                                    break;
                            }
                            

                            cor_Kanji.push_back(currentKanji);
                            all_Kanji.push_back({currentKanji, instrCounter, true});
                            sendOSCPattern(instrCounter, eins, zwei, drei, vier, fuenf, sechs, sieben, acht, neun, zehn, elf, zwoelf, dreizehn, vierzehn, fuenfzehn, sechzehn);
                            sendOSCNKeyChange(newKey, 4000);

                            if (cor_Kanji.size() % 10 == 0){
                                sendOSCChangeRhythm(getRandomNumber(1, 8, 1));
                            }
                            
                            
                        } else {
                            //not working correctly 
                            // mainColor.r -= 15;
                            // mainColor.g -= 15;
                            // mainColor.b -= 15;
                            
                            wro_Kanji.push_back(currentKanji);
                            all_Kanji.push_back({currentKanji, instrCounter, false});
                            if (wro_Kanji.size() % 20 == 0){ //original set to 5
                                wrongKanjiCounter ++;
                                sendOSCInstrOff(wrongKanjiCounter);
                                if(wro_Kanji.size()==5){
                                    removeEntriesWithInstrCounter(all_Kanji, 1);
                                }else if(wro_Kanji.size()==10){
                                    removeEntriesWithInstrCounter(all_Kanji, 2);
                                }else if(wro_Kanji.size()==15){
                                    removeEntriesWithInstrCounter(all_Kanji, 3);
                                }else if(wro_Kanji.size()==20){
                                    removeEntriesWithInstrCounter(all_Kanji, 4);
                                }
                            }

                        }
                        inputText = ""; // Clear input after submission
                        kanjiCounter ++;

                        if (roundBased){
                            if (++round < numberOfRounds) {
                                currentKanji = getRandomKanji(game_Kanji);
                            } else {
                                startGame = false;
                                resultsWindow = true;
                            }
                        }
                        if (timeBased){
                            if (elapsedTime < playTime){
                                currentKanji = getRandomKanji(game_Kanji);
                            } else {
                                startGame = false;
                                resultsWindow = true;
                            }
                        }
                        
                    }
                } else {
                    std::string character = GetCharFromKey(key, shiftPressed);
                    if (!character.empty()) {
                        inputText += character;
                    }
                }
            }

            // Draw
            BeginDrawing();
            ClearBackground(mainColor);

            if (!resultsWindow) {
                HideCursor();
                if (timeBased){
                     DrawTextB(timeStr.c_str(), screenWidth - 200, 10, 30, BLACK);
                }
               

                // Calculate text width for "Kanji: <round>"
                std::string roundText = "Kanji: " + std::to_string(kanjiCounter + 1);
                

                DrawCenteredText(kanjiFont, roundText.c_str(), centerPosX, 350, fontSize, DARKGRAY);


                std::string kanjiText = currentKanji.getKanji();


                DrawCenteredText(kanjiFont, kanjiText.c_str(), centerPosX, centerPosY, fontSizeKanji, textColor);
                
                std::string keyWrdText = "What is the keyword?";

                DrawCenteredText(kanjiFont, keyWrdText.c_str(), centerPosX, 70, fontSize, DARKGRAY);


                DrawCenteredText(kanjiFont, inputText.c_str(), centerPosX, centerPosY + MeasureTextEx(kanjiFont, (currentKanji.getKanji()).c_str(), fontSizeKanji, 0).y + 30, fontSize, BLACK);

                
                DrawCenteredText(kanjiFont, resultText.c_str(), centerPosX, centerPosY + MeasureTextEx(kanjiFont, (currentKanji.getKanji()).c_str(), fontSizeKanji, 0).y + 70, fontSize, inputCorrect ? DARKGREEN : DARKPURPLE);



                int currentInstr = -1;
                int col = 0;
                int rowKey;

                
                

                for (size_t i = 0; i < all_Kanji.size(); ++i){
                    
                    const KanjiEntry& entry = all_Kanji[i];
                    std::string kanjiText = entry.kanji.getKanji();
                    // std::vector<std::string> kanjisKeywords = entry.kanji.getKeywords();
                    int row = entry.instrCounter;

                    if (entry.instrCounter != currentInstr){
                        currentInstr = entry.instrCounter;
                        col = 0;
                    }

                    if (!all_Kanji[i].correct){
                        int xPosR = centerPosX + 200 + col * itemSpacing; 
                        int yPosR = 150 + row * rowSpacing;

                        

                        // Draw the text using DrawTextEx
                        DrawTextEx(kanjiFont, kanjiText.c_str(), (Vector2){ (float)xPosR, (float)yPosR}, fontSizeKanji - 12, 0, textColor);


                        col ++;
                        } else if(all_Kanji[i].correct){
                        int xPosR = 10 + 200 +  col * itemSpacing; 
                        int yPosR = 150 + row * rowSpacing;

                        // Draw the text using DrawTextEx
                        DrawTextEx(kanjiFont, kanjiText.c_str(), (Vector2){ (float)xPosR, (float)yPosR}, fontSizeKanji - 12, 0, textColor);
                        
                        col ++;
                        }

                        
                    
                }
                // disable / enable show Keywords!
                if (showKeywords == true){
                    if (!all_Kanji.empty()){
                        KanjiEntry lastKanji = all_Kanji.back();
                        std::vector<std::string> kanjisKeywords = lastKanji.kanji.getKeywords();
                        if (instrTotalCounter == 14 && wro_Kanji.size()>5){
                            rowKey = instrTotalCounter +1;
                        }else if (instrTotalCounter == 15 && wro_Kanji.size()>10){
                            rowKey = instrTotalCounter +1;
                        }else{
                            rowKey = instrCounter +1;
                        }
    
                        if (lastKanji.correct){
                                for (size_t i = 0; i < kanjisKeywords.size(); i++) {
                                int keyPosY = 150 + rowKey * rowSpacing + i * 32;
                                DrawTextEx(kanjiFont, kanjisKeywords[i].c_str(), (Vector2){10, (float)keyPosY}, fontSize, 0, textColor);
                            }
                            }else if (!lastKanji.correct){
                                for (size_t i = 0; i < kanjisKeywords.size(); i++) {
                                int keyPosY = 150 + rowKey * rowSpacing + i * 32;
                                DrawTextEx(kanjiFont, kanjisKeywords[i].c_str(), (Vector2){centerPosX + 100, (float)keyPosY}, fontSize, 0, textColor);
                            }
                            }
                    }

                }
                

                
                }
                EndDrawing();
        
        }else if (resultsWindow) {


            if (oscSent) {
                double elapsedTime = GetTime() - startTimeFinText;
                alphaFinText = (float)(elapsedTime / 10.0);
                if (alphaFinText > 1.0f) alphaFinText = 1.0f;
                finTextColor.a = (unsigned char)(alphaFinText * 255);
            }


            if (IsKeyPressed(KEY_ENTER)){
                sendOSCNAutoEnd(1);
                // std::this_thread::sleep_for(std::chrono::seconds(10));
                oscSent = true;
                startTimeFinText = GetTime();
            }
            else if (IsKeyPressed(KEY_ESCAPE)) {
                resultsWindow = false;
                //sendOSCNAutoStart(1);
                //sendOSCNAutoEnd(1);
            }
            
            BeginDrawing();
            ClearBackground(RAYWHITE);

            if (oscSent) {
            DrawCenteredText(kanjiFont, finalText.c_str(), centerPosX, centerPosY, fontSizeKanji, finTextColor);
            }
        
            std::string resultText = "Results Screen...press Enter to fade out sound ESC to exit.";
            DrawCenteredText(kanjiFont, resultText.c_str(), centerPosX, 20, fontSize, DARKGRAY);
            DrawTextB(("Correct Kanji (" + std::to_string(cor_Kanji.size()) + ") :").c_str(), 10, 50, fontSize, textColor);
            int corRows = (cor_Kanji.size() + maxItemsPerRow - 1) / maxItemsPerRow; // Total rows needed for correct Kanji
                for (size_t i = 0; i < cor_Kanji.size(); ++i) {
                    const Kanji& kanji = cor_Kanji[i];
                    std::string kanjiText = kanji.getKanji();

                    int row = i / maxItemsPerRow;
                    int col = i % maxItemsPerRow;
                    int xPosR = 10 + col * itemSpacing; 
                    int yPosR = 85 + row * rowSpacing;

                    DrawTextEx(kanjiFont, kanjiText.c_str(), (Vector2){ (float)xPosR, (float)yPosR}, fontSize, 0, textColor);
                    }
            DrawTextB(("Wrong Kanji (" + std::to_string(wro_Kanji.size()) + ") :").c_str(), centerPosX+100, 50, fontSize, textColor);
            int wroRows = (wro_Kanji.size() + maxItemsPerRow - 1) / maxItemsPerRow; // Total rows needed for wrong Kanji
                for (size_t i = 0; i < wro_Kanji.size(); ++i) {
                    const Kanji& kanji = wro_Kanji[i];
                    std::string kanjiText = kanji.getKanji();

                    int row = i / maxItemsPerRow;
                    int col = i % maxItemsPerRow;
                    int xPosW = centerPosX + 100 + col * itemSpacing;
                    int yPosW = 85 + row * rowSpacing;

                    DrawTextEx(kanjiFont, kanjiText.c_str(), (Vector2){ (float)xPosW, (float)yPosW}, fontSize, 0, textColor);
                    }
            EndDrawing();
        }
    }
    UnloadFont(kanjiFont);
    ShowCursor();
    CloseWindow();
    return 0;
}