global alreadySent := false
SetTitleMatchMode(2)

F8::SetTimer(CheckButton, 500)
F9::SetTimer(CheckButton, 0)

CheckButton() {
    global alreadySent
    color := PixelGetColor(3807, 975, "RGB")
    brightness := GetBrightness(color)
    if (brightness < 80) { ; Button ist dunkel
        if (!alreadySent) {
            MouseClick("left", 3384, 940)
            Sleep(100)
            Send("weiter")
            Sleep(100)
            Send("{Enter}")
            Sleep(200)
            MouseClick("left", -146, 303)
            alreadySent := true
        }
    } else {
        alreadySent := false
    }
}

GetBrightness(color) {
    r := (color >> 16) & 0xFF
    g := (color >> 8) & 0xFF
    b := color & 0xFF
    return 0.299*r + 0.587*g + 0.114*b
}
