#ifndef GUI_UTILS_HPP
#define GUI_UTILS_HPP

#include "raylib.h"

typedef struct {
    Rectangle bounds;
    Color normalColor;
    Color hoverColor;
    Color clickColor;
    const char *text;
} Button;

extern Font kanjiFont;

namespace GUIUtils {
    // static void DrawTextBoxed(Font font, const char *text, Rectangle rec, float fontSize, float spacing, bool wordWrap, Color tint); -> unused
    void DrawTextB(const char *txt, int x, int y, int fS, Color col);

    bool CheckMouseOver(Rectangle rect);

    void DrawCenteredText(Font font, const char* text, int posX, int posY, int fontSize, Color color);

    void DrawButton(Button button, int fntSize);

    bool IsButtonPressed(Button button);

    void InitFont(const char* path);
}



#endif