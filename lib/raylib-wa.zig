usingnamespace @import("raylib-zig.zig");

pub extern fn InitWindow(width: c_int, height: c_int, title: [*c]const u8) void;
pub extern fn WindowShouldClose() bool;
pub extern fn CloseWindow() void;
pub extern fn IsWindowReady() bool;
pub extern fn IsWindowMinimized() bool;
pub extern fn IsWindowResized() bool;
pub extern fn IsWindowHidden() bool;
pub extern fn IsWindowFullscreen() bool;
pub extern fn ToggleFullscreen() void;
pub extern fn UnhideWindow() void;
pub extern fn HideWindow() void;
pub extern fn SetWindowIcon(image: Image) void;
pub extern fn SetWindowTitle(title: [*c]const u8) void;
pub extern fn SetWindowPosition(x: c_int, y: c_int) void;
pub extern fn SetWindowMonitor(monitor: c_int) void;
pub extern fn SetWindowMinSize(width: c_int, height: c_int) void;
pub extern fn SetWindowSize(width: c_int, height: c_int) void;
pub extern fn GetWindowHandle() [*c]const void;
pub extern fn GetScreenWidth() c_int;
pub extern fn GetScreenHeight() c_int;
pub extern fn GetMonitorCount() c_int;
pub extern fn GetMonitorWidth(monitor: c_int) c_int;
pub extern fn GetMonitorHeight(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalWidth(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalHeight(monitor: c_int) c_int;
pub extern fn GetWindowPosition() Vector2;
pub extern fn GetMonitorName(monitor: c_int) [*c]const u8;
pub extern fn GetClipboardText() [*c]const u8;
pub extern fn SetClipboardText(text: [*c]const u8) void;
pub extern fn ShowCursor() void;
pub extern fn HideCursor() void;
pub extern fn IsCursorHidden() bool;
pub extern fn EnableCursor() void;
pub extern fn DisableCursor() void;
pub extern fn ClearBackground(color: Color) void;
pub extern fn BeginDrawing() void;
pub extern fn EndDrawing() void;
pub extern fn BeginMode2D(camera: Camera2D) void;
pub extern fn EndMode2D() void;
pub extern fn BeginMode3D(camera: Camera3D) void;
pub extern fn EndMode3D() void;
pub extern fn BeginTextureMode(target: RenderTexture2D) void;
pub extern fn EndTextureMode() void;
pub extern fn BeginScissorMode(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn EndScissorMode() void;
pub extern fn GetMouseRay(mousePosition: Vector2, camera: Camera) Ray;
pub extern fn GetCameraMatrix(camera: Camera) Matrix;
pub extern fn GetCameraMatrix2D(camera: Camera2D) Matrix;
pub extern fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;
pub extern fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: c_int, height: c_int) Vector2;
pub extern fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn SetTargetFPS(fps: c_int) void;
pub extern fn GetFPS() c_int;
pub extern fn GetFrameTime() f32;
pub extern fn GetTime() double;
pub extern fn ColorToInt(color: Color) c_int;
pub extern fn ColorNormalize(color: Color) Vector4;
pub extern fn ColorFromNormalized(normalized: Vector4) Color;
pub extern fn ColorToHSV(color: Color) Vector3;
pub extern fn ColorFromHSV(hsv: Vector3) Color;
pub extern fn GetColor(hexValue: c_int) Color;
pub extern fn Fade(color: Color, alpha: f32) Color;
pub extern fn SetConfigFlags(flags: c_uint) void;
pub extern fn SetTraceLogLevel(logType: c_int) void;
pub extern fn SetTraceLogExit(logType: c_int) void;
pub extern fn SetTraceLogCallback(callback: TraceLogCallback) void;
pub extern fn TraceLog(logType: c_int, text: [*c]const u8, ...) void;
pub extern fn TakeScreenshot(fileName: [*c]const u8) void;
pub extern fn GetRandomValue(min: c_int, max: c_int) c_int;
pub extern fn LoadFileData(fileName: [*c]const u8, bytesRead: [*c]const c_uint) [*c]const u8;
pub extern fn SaveFileData(fileName: [*c]const u8, data: [*c]const void, bytesToWrite: c_uint) void;
pub extern fn LoadFileText(fileName: [*c]const u8) [*c]const u8;
pub extern fn SaveFileText(fileName: [*c]const u8, text: [*c]const u8) void;
pub extern fn FileExists(fileName: [*c]const u8) bool;
pub extern fn IsFileExtension(fileName: [*c]const u8, ext: [*c]const u8) bool;
pub extern fn DirectoryExists(dirPath: [*c]const u8) bool;
pub extern fn GetExtension(fileName: [*c]const u8) [*c]const u8;
pub extern fn GetFileName(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetFileNameWithoutExt(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetDirectoryPath(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetPrevDirectoryPath(dirPath: [*c]const u8) [*c]const u8;
pub extern fn GetWorkingDirectory() [*c]const u8;
pub extern fn GetDirectoryFiles(dirPath: [*c]const u8, count: [*c]const c_int) [*c][*c]const u8;
pub extern fn ClearDirectoryFiles() void;
pub extern fn ChangeDirectory(dir: [*c]const u8) bool;
pub extern fn IsFileDropped() bool;
pub extern fn GetDroppedFiles(count: [*c]const c_int) [*c][*c]const u8;
pub extern fn ClearDroppedFiles() void;
pub extern fn GetFileModTime(fileName: [*c]const u8) c_long;
pub extern fn CompressData(data: [*c]const u8, dataLength: c_int, compDataLength: [*c]const c_int) [*c]const u8;
pub extern fn DecompressData(compData: [*c]const u8, compDataLength: c_int, dataLength: [*c]const c_int) [*c]const u8;
pub extern fn SaveStorageValue(position: c_uint, value: c_int) void;
pub extern fn LoadStorageValue(position: c_uint) c_int;
pub extern fn OpenURL(url: [*c]const u8) void;
pub extern fn IsKeyPressed(key: KeyboardKey) bool;
pub extern fn IsKeyDown(key: KeyboardKey) bool;
pub extern fn IsKeyReleased(key: KeyboardKey) bool;
pub extern fn IsKeyUp(key: KeyboardKey) bool;
pub extern fn SetExitKey(key: KeyboardKey) void;
pub extern fn GetKeyPressed() c_int;
pub extern fn IsGamepadAvailable(gamepad: c_int) bool;
pub extern fn IsGamepadName(gamepad: c_int, name: [*c]const u8) bool;
pub extern fn GetGamepadName(gamepad: c_int) [*c]const u8;
pub extern fn IsGamepadButtonPressed(gamepad: c_int, button: MouseButton) bool;
pub extern fn IsGamepadButtonDown(gamepad: c_int, button: MouseButton) bool;
pub extern fn IsGamepadButtonReleased(gamepad: c_int, button: MouseButton) bool;
pub extern fn IsGamepadButtonUp(gamepad: c_int, button: MouseButton) bool;
pub extern fn GetGamepadButtonPressed() c_int;
pub extern fn GetGamepadAxisCount(gamepad: c_int) c_int;
pub extern fn GetGamepadAxisMovement(gamepad: c_int, axis: c_int) f32;
pub extern fn IsMouseButtonPressed(button: MouseButton) bool;
pub extern fn IsMouseButtonDown(button: MouseButton) bool;
pub extern fn IsMouseButtonReleased(button: MouseButton) bool;
pub extern fn IsMouseButtonUp(button: MouseButton) bool;
pub extern fn GetMouseX() c_int;
pub extern fn GetMouseY() c_int;
pub extern fn GetMousePosition() Vector2;
pub extern fn SetMousePosition(x: c_int, y: c_int) void;
pub extern fn SetMouseOffset(offsetX: c_int, offsetY: c_int) void;
pub extern fn SetMouseScale(scaleX: f32, scaleY: f32) void;
pub extern fn GetMouseWheelMove() c_int;
pub extern fn GetTouchX() c_int;
pub extern fn GetTouchY() c_int;
pub extern fn GetTouchPosition(index: c_int) Vector2;
pub extern fn SetGesturesEnabled(gestureFlags: c_uint) void;
pub extern fn IsGestureDetected(gesture: c_int) bool;
pub extern fn GetGestureDetected() c_int;
pub extern fn GetTouchPointsCount() c_int;
pub extern fn GetGestureHoldDuration() f32;
pub extern fn GetGestureDragVector() Vector2;
pub extern fn GetGestureDragAngle() f32;
pub extern fn GetGesturePinchVector() Vector2;
pub extern fn GetGesturePinchAngle() f32;
pub extern fn SetCameraMode(camera: Camera, mode: CameraMode) void;
pub extern fn UpdateCamera(camera: [*c]const Camera) void;
pub extern fn SetCameraPanControl(panKey: c_int) void;
pub extern fn SetCameraAltControl(altKey: c_int) void;
pub extern fn SetCameraSmoothZoomControl(szKey: c_int) void;
pub extern fn SetCameraMoveControls(frontKey: c_int, backKey: c_int, rightKey: c_int, leftKey: c_int, upKey: c_int, downKey: c_int) void;
pub extern fn DrawPixel(posX: c_int, posY: c_int, color: Color) void;
pub extern fn DrawPixelV(position: Vector2, color: Color) void;
pub extern fn DrawLine(startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;
pub extern fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineStrip(points: [*c]const Vector2, numPoints: c_int, color: Color) void;
pub extern fn DrawCircle(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawCircleSector(center: Vector2, radius: f32, startAngle: c_int, endAngle: c_int, segments: c_int, color: Color) void;
pub extern fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: c_int, endAngle: c_int, segments: c_int, color: Color) void;
pub extern fn DrawCircleGradient(centerX: c_int, centerY: c_int, radius: f32, color1: Color, color2: Color) void;
pub extern fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;
pub extern fn DrawCircleLines(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawEllipse(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawEllipseLines(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: c_int, endAngle: c_int, segments: c_int, color: Color) void;
pub extern fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: c_int, endAngle: c_int, segments: c_int, color: Color) void;
pub extern fn DrawRectangle(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleV(position: Vector2, size: Vector2, color: Color) void;
pub extern fn DrawRectangleRec(rec: Rectangle, color: Color) void;
pub extern fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;
pub extern fn DrawRectangleGradientV(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientH(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;
pub extern fn DrawRectangleLines(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleLinesEx(rec: Rectangle, lineThick: c_int, color: Color) void;
pub extern fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: c_int, lineThick: c_int, color: Color) void;
pub extern fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleFan(points: [*c]const Vector2, numPoints: c_int, color: Color) void;
pub extern fn DrawTriangleStrip(points: [*c]const Vector2, pointsCount: c_int, color: Color) void;
pub extern fn DrawPoly(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLines(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;
pub extern fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;
pub extern fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;
pub extern fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;
pub extern fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;
pub extern fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;
pub extern fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;
pub extern fn LoadImage(fileName: [*c]const u8) Image;
pub extern fn LoadImageEx(pixels: [*c]const Color, width: c_int, height: c_int) Image;
pub extern fn LoadImagePro(data: [*c]const void, width: c_int, height: c_int, format: c_int) Image;
pub extern fn LoadImageRaw(fileName: [*c]const u8, width: c_int, height: c_int, format: c_int, headerSize: c_int) Image;
pub extern fn UnloadImage(image: Image) void;
pub extern fn ExportImage(image: Image, fileName: [*c]const u8) void;
pub extern fn ExportImageAsCode(image: Image, fileName: [*c]const u8) void;
pub extern fn GetImageData(image: Image) [*c]const Color;
pub extern fn GetImageDataNormalized(image: Image) [*c]const Vector4;
pub extern fn GenImageColor(width: c_int, height: c_int, color: Color) Image;
pub extern fn GenImageGradientV(width: c_int, height: c_int, top: Color, bottom: Color) Image;
pub extern fn GenImageGradientH(width: c_int, height: c_int, left: Color, right: Color) Image;
pub extern fn GenImageGradientRadial(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageChecked(width: c_int, height: c_int, checksX: c_int, checksY: c_int, col1: Color, col2: Color) Image;
pub extern fn GenImageWhiteNoise(width: c_int, height: c_int, factor: f32) Image;
pub extern fn GenImagePerlinNoise(width: c_int, height: c_int, offsetX: c_int, offsetY: c_int, scale: f32) Image;
pub extern fn GenImageCellular(width: c_int, height: c_int, tileSize: c_int) Image;
pub extern fn ImageCopy(image: Image) Image;
pub extern fn ImageFromImage(image: Image, rec: Rectangle) Image;
pub extern fn ImageText(text: [*c]const u8, fontSize: c_int, color: Color) Image;
pub extern fn ImageTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32, tint: Color) Image;
pub extern fn ImageToPOT(image: [*c]const Image, fillColor: Color) void;
pub extern fn ImageFormat(image: [*c]const Image, newFormat: c_int) void;
pub extern fn ImageAlphaMask(image: [*c]const Image, alphaMask: Image) void;
pub extern fn ImageAlphaClear(image: [*c]const Image, color: Color, threshold: f32) void;
pub extern fn ImageAlphaCrop(image: [*c]const Image, threshold: f32) void;
pub extern fn ImageAlphaPremultiply(image: [*c]const Image) void;
pub extern fn ImageCrop(image: [*c]const Image, crop: Rectangle) void;
pub extern fn ImageResize(image: [*c]const Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeNN(image: [*c]const Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeCanvas(image: [*c]const Image, newWidth: c_int, newHeight: c_int, offsetX: c_int, offsetY: c_int, color: Color) void;
pub extern fn ImageMipmaps(image: [*c]const Image) void;
pub extern fn ImageDither(image: [*c]const Image, rBpp: c_int, gBpp: c_int, bBpp: c_int, aBpp: c_int) void;
pub extern fn ImageFlipVertical(image: [*c]const Image) void;
pub extern fn ImageFlipHorizontal(image: [*c]const Image) void;
pub extern fn ImageRotateCW(image: [*c]const Image) void;
pub extern fn ImageRotateCCW(image: [*c]const Image) void;
pub extern fn ImageColorTint(image: [*c]const Image, color: Color) void;
pub extern fn ImageColorInvert(image: [*c]const Image) void;
pub extern fn ImageColorGrayscale(image: [*c]const Image) void;
pub extern fn ImageColorContrast(image: [*c]const Image, contrast: f32) void;
pub extern fn ImageColorBrightness(image: [*c]const Image, brightness: c_int) void;
pub extern fn ImageColorReplace(image: [*c]const Image, color: Color, replace: Color) void;
pub extern fn ImageExtractPalette(image: Image, maxPaletteSize: c_int, extractCount: [*c]const c_int) [*c]const Color;
pub extern fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;
pub extern fn ImageClearBackground(dst: [*c]const Image, color: Color) void;
pub extern fn ImageDrawPixel(dst: [*c]const Image, posX: c_int, posY: c_int, color: Color) void;
pub extern fn ImageDrawPixelV(dst: [*c]const Image, position: Vector2, color: Color) void;
pub extern fn ImageDrawLine(dst: [*c]const Image, startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn ImageDrawLineV(dst: [*c]const Image, start: Vector2, end: Vector2, color: Color) void;
pub extern fn ImageDrawCircle(dst: [*c]const Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleV(dst: [*c]const Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawRectangle(dst: [*c]const Image, posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn ImageDrawRectangleV(dst: [*c]const Image, position: Vector2, size: Vector2, color: Color) void;
pub extern fn ImageDrawRectangleRec(dst: [*c]const Image, rec: Rectangle, color: Color) void;
pub extern fn ImageDrawRectangleLines(dst: [*c]const Image, rec: Rectangle, thick: c_int, color: Color) void;
pub extern fn ImageDraw(dst: [*c]const Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;
pub extern fn ImageDrawText(dst: [*c]const Image, position: Vector2, text: [*c]const u8, fontSize: c_int, color: Color) void;
pub extern fn ImageDrawTextEx(dst: [*c]const Image, position: Vector2, font: Font, text: [*c]const u8, fontSize: f32, spacing: f32, color: Color) void;
pub extern fn LoadTexture(fileName: [*c]const u8) Texture2D;
pub extern fn LoadTextureFromImage(image: Image) Texture2D;
pub extern fn LoadTextureCubemap(image: Image, layoutType: c_int) TextureCubemap;
pub extern fn LoadRenderTexture(width: c_int, height: c_int) RenderTexture2D;
pub extern fn UnloadTexture(texture: Texture2D) void;
pub extern fn UnloadRenderTexture(target: RenderTexture2D) void;
pub extern fn UpdateTexture(texture: Texture2D, pixels: [*c]const void) void;
pub extern fn GetTextureData(texture: Texture2D) Image;
pub extern fn GetScreenData() Image;
pub extern fn GenTextureMipmaps(texture: [*c]const Texture2D) void;
pub extern fn SetTextureFilter(texture: Texture2D, filterMode: c_int) void;
pub extern fn SetTextureWrap(texture: Texture2D, wrapMode: c_int) void;
pub extern fn DrawTexture(texture: Texture2D, posX: c_int, posY: c_int, tint: Color) void;
pub extern fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;
pub extern fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;
pub extern fn DrawTextureRec(texture: Texture2D, sourceRec: Rectangle, position: Vector2, tint: Color) void;
pub extern fn DrawTextureQuad(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color) void;
pub extern fn DrawTexturePro(texture: Texture2D, sourceRec: Rectangle, destRec: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, destRec: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn GetPixelDataSize(width: c_int, height: c_int, format: c_int) c_int;
pub extern fn GetFontDefault() Font;
pub extern fn LoadFont(fileName: [*c]const u8) Font;
pub extern fn LoadFontEx(fileName: [*c]const u8, fontSize: c_int, fontChars: [*c]const c_int, charsCount: c_int) Font;
pub extern fn LoadFontFromImage(image: Image, key: Color, firstChar: c_int) Font;
pub extern fn LoadFontData(fileName: [*c]const u8, fontSize: c_int, fontChars: [*c]const c_int, charsCount: c_int, type: c_int) [*c]const CharInfo;
pub extern fn GenImageFontAtlas(chars: [*c]const CharInfo, recs: [*c][*c]const Rectangle, charsCount: c_int, fontSize: c_int, padding: c_int, packMethod: c_int) Image;
pub extern fn UnloadFont(font: Font) void;
pub extern fn DrawFPS(posX: c_int, posY: c_int) void;
pub extern fn DrawText(text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn DrawTextEx(font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextRec(font: Font, text: [*c]const u8, rec: Rectangle, fontSize: f32, spacing: f32, wordWrap: bool, tint: Color) void;
pub extern fn DrawTextRecEx(font: Font, text: [*c]const u8, rec: Rectangle, fontSize: f32, spacing: f32, wordWrap: bool, tint: Color, selectStart: c_int, selectLength: c_int, selectTint: Color, selectBackTint: Color) void;
pub extern fn DrawTextCodepoint(font: Font, codepoint: c_int, position: Vector2, scale: f32, tint: Color) void;
pub extern fn MeasureText(text: [*c]const u8, fontSize: c_int) c_int;
pub extern fn MeasureTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32) Vector2;
pub extern fn GetGlyphIndex(font: Font, codepoint: c_int) c_int;
pub extern fn TextCopy(dst: [*c]const u8, src: [*c]const u8) c_int;
pub extern fn TextIsEqual(text1: [*c]const u8, text2: [*c]const u8) bool;
pub extern fn TextLength(text: [*c]const u8) c_uint;
pub extern fn TextFormat(text: [*c]const u8, ...) [*c]const u8;
pub extern fn TextSubtext(text: [*c]const u8, position: c_int, length: c_int) [*c]const u8;
pub extern fn TextReplace(text: [*c]const u8, replace: [*c]const u8, by: [*c]const u8) [*c]const u8;
pub extern fn TextInsert(text: [*c]const u8, insert: [*c]const u8, position: c_int) [*c]const u8;
pub extern fn TextJoin(textList: [*c][*c]const u8, count: c_int, delimiter: [*c]const u8) [*c]const u8;
pub extern fn TextSplit(text: [*c]const u8, delimiter: u8, count: [*c]const c_int) [*c][*c]const u8;
pub extern fn TextAppend(text: [*c]const u8, append: [*c]const u8, position: [*c]const c_int) void;
pub extern fn TextFindIndex(text: [*c]const u8, find: [*c]const u8) c_int;
pub extern fn TextToUpper(text: [*c]const u8) [*c]const u8;
pub extern fn TextToLower(text: [*c]const u8) [*c]const u8;
pub extern fn TextToPascal(text: [*c]const u8) [*c]const u8;
pub extern fn TextToInteger(text: [*c]const u8) c_int;
pub extern fn TextToUtf8(codepoints: [*c]const c_int, length: c_int) [*c]const u8;
pub extern fn GetCodepoints(text: [*c]const u8, count: [*c]const c_int) [*c]const c_int;
pub extern fn GetCodepointsCount(text: [*c]const u8) c_int;
pub extern fn GetNextCodepoint(text: [*c]const u8, bytesProcessed: [*c]const c_int) c_int;
pub extern fn CodepointToUtf8(codepoint: c_int, byteLength: [*c]const c_int) [*c]const u8;
pub extern fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;
pub extern fn DrawPoint3D(position: Vector3, color: Color) void;
pub extern fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;
pub extern fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeWiresV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeTexture(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;
pub extern fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawPlane(centerPos: Vector3, size: Vector2, color: Color) void;
pub extern fn DrawRay(ray: Ray, color: Color) void;
pub extern fn DrawGrid(slices: c_int, spacing: f32) void;
pub extern fn DrawGizmo(position: Vector3) void;
pub extern fn LoadModel(fileName: [*c]const u8) Model;
pub extern fn LoadModelFromMesh(mesh: Mesh) Model;
pub extern fn UnloadModel(model: Model) void;
pub extern fn LoadMeshes(fileName: [*c]const u8, meshCount: [*c]const c_int) [*c]const Mesh;
pub extern fn ExportMesh(mesh: Mesh, fileName: [*c]const u8) void;
pub extern fn UnloadMesh(mesh: Mesh) void;
pub extern fn LoadMaterials(fileName: [*c]const u8, materialCount: [*c]const c_int) [*c]const Material;
pub extern fn LoadMaterialDefault() Material;
pub extern fn UnloadMaterial(material: Material) void;
pub extern fn SetMaterialTexture(material: [*c]const Material, mapType: c_int, texture: Texture2D) void;
pub extern fn SetModelMeshMaterial(model: [*c]const Model, meshId: c_int, materialId: c_int) void;
pub extern fn LoadModelAnimations(fileName: [*c]const u8, animsCount: [*c]const c_int) [*c]const ModelAnimation;
pub extern fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: c_int) void;
pub extern fn UnloadModelAnimation(anim: ModelAnimation) void;
pub extern fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;
pub extern fn GenMeshPoly(sides: c_int, radius: f32) Mesh;
pub extern fn GenMeshPlane(width: f32, length: f32, resX: c_int, resZ: c_int) Mesh;
pub extern fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;
pub extern fn GenMeshSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshHemiSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshCylinder(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshTorus(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshKnot(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshHeightmap(heightmap: Image, size: Vector3) Mesh;
pub extern fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;
pub extern fn MeshBoundingBox(mesh: Mesh) BoundingBox;
pub extern fn MeshTangents(mesh: [*c]const Mesh) void;
pub extern fn MeshBinormals(mesh: [*c]const Mesh) void;
pub extern fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawBoundingBox(box: BoundingBox, color: Color) void;
pub extern fn DrawBillboard(camera: Camera, texture: Texture2D, center: Vector3, size: f32, tint: Color) void;
pub extern fn DrawBillboardRec(camera: Camera, texture: Texture2D, sourceRec: Rectangle, center: Vector3, size: f32, tint: Color) void;
pub extern fn CheckCollisionSpheres(centerA: Vector3, radiusA: f32, centerB: Vector3, radiusB: f32) bool;
pub extern fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;
pub extern fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;
pub extern fn CheckCollisionRaySphere(ray: Ray, center: Vector3, radius: f32) bool;
pub extern fn CheckCollisionRaySphereEx(ray: Ray, center: Vector3, radius: f32, collisionPoint: [*c]const Vector3) bool;
pub extern fn CheckCollisionRayBox(ray: Ray, box: BoundingBox) bool;
pub extern fn GetCollisionRayModel(ray: Ray, model: Model) RayHitInfo;
pub extern fn GetCollisionRayTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayHitInfo;
pub extern fn GetCollisionRayGround(ray: Ray, groundHeight: f32) RayHitInfo;
pub extern fn LoadShader(vsFileName: [*c]const u8, fsFileName: [*c]const u8) Shader;
pub extern fn LoadShaderCode(vsCode: [*c]const u8, fsCode: [*c]const u8) Shader;
pub extern fn UnloadShader(shader: Shader) void;
pub extern fn GetShaderDefault() Shader;
pub extern fn GetTextureDefault() Texture2D;
pub extern fn GetShapesTexture() Texture2D;
pub extern fn GetShapesTextureRec() Rectangle;
pub extern fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;
pub extern fn GetShaderLocation(shader: Shader, uniformName: [*c]const u8) c_int;
pub extern fn SetShaderValue(shader: Shader, uniformLoc: c_int, value: [*c]const void, uniformType: c_int) void;
pub extern fn SetShaderValueV(shader: Shader, uniformLoc: c_int, value: [*c]const void, uniformType: c_int, count: c_int) void;
pub extern fn SetShaderValueMatrix(shader: Shader, uniformLoc: c_int, mat: Matrix) void;
pub extern fn SetShaderValueTexture(shader: Shader, uniformLoc: c_int, texture: Texture2D) void;
pub extern fn SetMatrixProjection(proj: Matrix) void;
pub extern fn SetMatrixModelview(view: Matrix) void;
pub extern fn GetMatrixModelview() Matrix;
pub extern fn GetMatrixProjection() Matrix;
pub extern fn GenTextureCubemap(shader: Shader, map: Texture2D, size: c_int) Texture2D;
pub extern fn GenTextureIrradiance(shader: Shader, cubemap: Texture2D, size: c_int) Texture2D;
pub extern fn GenTexturePrefilter(shader: Shader, cubemap: Texture2D, size: c_int) Texture2D;
pub extern fn GenTextureBRDF(shader: Shader, size: c_int) Texture2D;
pub extern fn BeginShaderMode(shader: Shader) void;
pub extern fn EndShaderMode() void;
pub extern fn BeginBlendMode(mode: c_int) void;
pub extern fn EndBlendMode() void;
pub extern fn InitVrSimulator() void;
pub extern fn CloseVrSimulator() void;
pub extern fn UpdateVrTracking(camera: [*c]const Camera) void;
pub extern fn SetVrConfiguration(info: VrDeviceInfo, distortion: Shader) void;
pub extern fn IsVrSimulatorReady() bool;
pub extern fn ToggleVrMode() void;
pub extern fn BeginVrDrawing() void;
pub extern fn EndVrDrawing() void;
pub extern fn InitAudioDevice() void;
pub extern fn CloseAudioDevice() void;
pub extern fn IsAudioDeviceReady() bool;
pub extern fn SetMasterVolume(volume: f32) void;
pub extern fn LoadWave(fileName: [*c]const u8) Wave;
pub extern fn LoadSound(fileName: [*c]const u8) Sound;
pub extern fn LoadSoundFromWave(wave: Wave) Sound;
pub extern fn UpdateSound(sound: Sound, data: [*c]const void, samplesCount: c_int) void;
pub extern fn UnloadWave(wave: Wave) void;
pub extern fn UnloadSound(sound: Sound) void;
pub extern fn ExportWave(wave: Wave, fileName: [*c]const u8) void;
pub extern fn ExportWaveAsCode(wave: Wave, fileName: [*c]const u8) void;
pub extern fn PlaySound(sound: Sound) void;
pub extern fn StopSound(sound: Sound) void;
pub extern fn PauseSound(sound: Sound) void;
pub extern fn ResumeSound(sound: Sound) void;
pub extern fn PlaySoundMulti(sound: Sound) void;
pub extern fn StopSoundMulti() void;
pub extern fn GetSoundsPlaying() c_int;
pub extern fn IsSoundPlaying(sound: Sound) bool;
pub extern fn SetSoundVolume(sound: Sound, volume: f32) void;
pub extern fn SetSoundPitch(sound: Sound, pitch: f32) void;
pub extern fn WaveFormat(wave: [*c]const Wave, sampleRate: c_int, sampleSize: c_int, channels: c_int) void;
pub extern fn WaveCopy(wave: Wave) Wave;
pub extern fn WaveCrop(wave: [*c]const Wave, initSample: c_int, finalSample: c_int) void;
pub extern fn GetWaveData(wave: Wave) [*c]const f32;
pub extern fn LoadMusicStream(fileName: [*c]const u8) Music;
pub extern fn UnloadMusicStream(music: Music) void;
pub extern fn PlayMusicStream(music: Music) void;
pub extern fn UpdateMusicStream(music: Music) void;
pub extern fn StopMusicStream(music: Music) void;
pub extern fn PauseMusicStream(music: Music) void;
pub extern fn ResumeMusicStream(music: Music) void;
pub extern fn IsMusicPlaying(music: Music) bool;
pub extern fn SetMusicVolume(music: Music, volume: f32) void;
pub extern fn SetMusicPitch(music: Music, pitch: f32) void;
pub extern fn SetMusicLoopCount(music: Music, count: c_int) void;
pub extern fn GetMusicTimeLength(music: Music) f32;
pub extern fn GetMusicTimePlayed(music: Music) f32;
pub extern fn InitAudioStream(sampleRate: c_uint, sampleSize: c_uint, channels: c_uint) AudioStream;
pub extern fn UpdateAudioStream(stream: AudioStream, data: [*c]const void, samplesCount: c_int) void;
pub extern fn CloseAudioStream(stream: AudioStream) void;
pub extern fn IsAudioStreamProcessed(stream: AudioStream) bool;
pub extern fn PlayAudioStream(stream: AudioStream) void;
pub extern fn PauseAudioStream(stream: AudioStream) void;
pub extern fn ResumeAudioStream(stream: AudioStream) void;
pub extern fn IsAudioStreamPlaying(stream: AudioStream) bool;
pub extern fn StopAudioStream(stream: AudioStream) void;
pub extern fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;
pub extern fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;
pub extern fn SetAudioStreamBufferSizeDefault(size: c_int) void;

