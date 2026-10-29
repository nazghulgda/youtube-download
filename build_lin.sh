#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

if [ ! -x ".venv/bin/pyinstaller" ]; then
    echo "ERROR: PyInstaller not found. Run ./setup_lin.sh first."
    exit 1
fi

# --collect-binaries imageio_ffmpeg - ffmpeg inside the executable
.venv/bin/pyinstaller \
    --onefile \
    --windowed \
    --clean \
    --noconfirm \
    --name yt-downloader \
    --collect-binaries imageio_ffmpeg \
    pull-yt-video-gui.py

echo
echo "Done: dist/yt-downloader"
