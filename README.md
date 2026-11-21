# nusic

Install "nusic.zip"
A customizable, free-form music dashboard for Windows. Arrange widgets anywhere on the screen, put photos on cards and the background, and apply effects. nusic shows whatever is playing on your PC (Firefox, Chrome, Spotify, any player) with real audio visualization, and can also play local files.

## Features

- **Free layout**: drag and resize widgets anywhere, full-window canvas, no grid
- **Widgets**: player, cover, controls, now playing, time ring, visualizer, pulse, queue, clock, volume, sleep timer, photo
- **Photos and effects**: photo on any card and on the background; blur, brightness, contrast, saturation, hue, grayscale, sepia, beat-synced pulse; card opacity, glass blur, rotation, glow
- **Any music source**: reads the Windows media session, so it works with any browser or player, no extension needed
- **Real visualizer**: analyses system audio output (WASAPI loopback)
- **Local library**: drop audio files onto the window
- **Autosave** of layout and settings

## Controls

| Action | How |
| --- | --- |
| Edit mode | Press and hold a widget (or empty space) |
| Move / resize | Drag a widget / drag its bottom-right handle in edit mode |
| Fullscreen | `F11` or `Alt+Enter` |
| Play / pause | `Space` |
| Leave edit mode | `Esc` or **Done** |

## Download

Grab `nusic.exe` from the [Releases](../../releases) page. Every pushed tag `v*` is built automatically by GitHub Actions.

## Run from source

Requires Windows 10/11 (with the WebView2 runtime) and Python 3.10 to 3.12.

```bat
pip install -r requirements.txt
python src\app.py
```

or just double-click `run.bat`.

## Build the exe

Double-click `build.bat`, or run the command inside it. The result is `dist\nusic.exe`.

To publish a release:

```bash
git tag v1.0.0
git push origin v1.0.0
```

## Data

Layout, settings and your local library are stored in `%APPDATA%\nusic`. Layout is also saved to `state.json` there.

## How it works

- `src/nusic.html` is the whole UI (HTML, CSS, JavaScript, no dependencies).
- `src/app.py` opens it in a [pywebview](https://pywebview.flowrl.com/) window, reads the current Windows media session (title, artist, artwork, position, play/pause/next/previous) and captures system audio for the visualizer.

## License

[MIT](LICENSE)
