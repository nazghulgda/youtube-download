#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

if [ ! -x ".venv/bin/pyinstaller" ]; then
    echo "ERROR: PyInstaller not found. Run ./setup_macos.sh first."
    exit 1
fi

# no --onefile, it's deprecated for .app on macOS
.venv/bin/pyinstaller \
    --windowed \
    --clean \
    --noconfirm \
    --name yt-downloader \
    --collect-binaries imageio_ffmpeg \
    pull-yt-video-gui.py

# ditto keeps symlinks and permissions in .app
ditto -c -k --keepParent dist/yt-downloader.app dist/yt-downloader-macos.zip

echo
echo "Done: dist/yt-downloader.app (zipped: dist/yt-downloader-macos.zip)"
