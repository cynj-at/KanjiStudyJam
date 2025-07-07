#include <string>
#include <iostream>
#include "raylib.h"
#include "guiUtils.hpp"

Font kanjiFont;

namespace GUIUtils {

    void InitFont(const char* path){
        kanjiFont = LoadFontEx(path, 32, 0, 65535);
    }

    void DrawTextB(const char *txt, int x, int y, int fS, Color col){
            DrawTextEx(kanjiFont, txt, (Vector2){ static_cast<float>(x), static_cast<float>(y) }, static_cast<float>(fS), 1.0f, col);
        };

    bool CheckMouseOver(Rectangle rect) {
        Vector2 mousePos = GetMousePosition();
        return (mousePos.x >= rect.x && mousePos.x <= rect.x + rect.width &&
                mousePos.y >= rect.y && mousePos.y <= rect.y + rect.height);
    };

    void DrawCenteredText(Font font, const char* text, int posX, int posY, int fontSize, Color color){
        Vector2 textSize = MeasureTextEx(font, text, fontSize, 0);
        float textPosX = posX - (textSize.x / 2);
        float textPosY = posY - (textSize.y / 2);
        DrawTextEx(font, text, { textPosX, textPosY }, fontSize, 0, color);
    };

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
    };

    bool IsButtonPressed(Button button) {
        Vector2 mousePosition = GetMousePosition();
        return CheckCollisionPointRec(mousePosition, button.bounds) && IsMouseButtonPressed(MOUSE_LEFT_BUTTON);
    }
}