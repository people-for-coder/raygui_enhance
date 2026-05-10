#include "raylib.h"

#define RAYGUI_IMPLEMENTATION
#include "../../src/raygui.h"

int main(void)
{
    const int screenWidth = 640;
    const int screenHeight = 360;

    InitWindow(screenWidth, screenHeight, "raygui - minimal demo");
    SetTargetFPS(60);

    int frameCounter = 0;

    while (!WindowShouldClose())
    {
        frameCounter++;

        BeginDrawing();
            ClearBackground(GetColor(GuiGetStyle(DEFAULT, BACKGROUND_COLOR)));

            GuiLabel((Rectangle){ 40, 40, 320, 30 }, "raygui minimal demo is running");
            GuiButton((Rectangle){ 40, 100, 180, 36 }, "#191#Hello raygui");
            GuiStatusBar((Rectangle){ 0, (float)screenHeight - 20, (float)screenWidth, 20 }, "Auto screenshot will be saved and app will exit");
        EndDrawing();

        if (frameCounter == 10) TakeScreenshot("examples/minimal_demo/minimal_demo.png");
        if (frameCounter > 12) break;
    }

    CloseWindow();
    return 0;
}
