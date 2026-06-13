package main

import "core:fmt"
import raylib "vendor:raylib"

app_state :: struct {
	screen_width:   i32,
	screen_height:  i32,
	raylib_texture: raylib.RenderTexture2D,
} {
	screen_width  = 1280,
	screen_height = 720,
}

raylib_window :: proc() {
	raylib.InitWindow(app_state.screen_width, app_state.screen_height, "First Window")
	defer raylib.CloseWindow()

	raylib.SetTargetFPS(60)

	raylib.BeginDrawing()
	raylib.ClearBackground(raylib.RAYWHITE)
	raylib.DrawText("TEST 123", 0, 0, 12, raylib.BLACK)
	raylib.DrawTextureRec(
		texture = app_state.raylib_texture.texture,
		source = {0, 0, f32(app_state.screen_width), -f32(app_state.screen_height)},
		position = {0, 0},
		tint = raylib.WHITE,
	)
	raylib.EndDrawing()

}
