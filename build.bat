@echo off
cd /d %~dp0
python -m pip install --upgrade pip
python -m pip install -r requirements.txt pyinstaller
python -m PyInstaller --noconfirm --onefile --windowed --name nusic --add-data "src/nusic.html;." --collect-all winrt.windows.media.control --collect-all winrt.windows.storage.streams --collect-all winrt.windows.foundation --collect-all winrt.windows.foundation.collections --collect-all pyaudiowpatch src/app.py
echo.
echo Done: dist\nusic.exe
pause
