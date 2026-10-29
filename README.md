Small script for downloading videos from youtube.

There are two versions:
- `pull-yt-video.py` - console version
- `pull-yt-video-gui.py` - window version (GUI), works on Windows, Linux and macOS

`ffmpeg` is installed together with requirements (`imageio-ffmpeg` package), there is no need to install it globally.

### Console version
Install requirements: `pip install -r requirements.txt`  
Run script by `python pull-yt-video.py` command, paste link to video,
wait for download to be finished and input 1 to download next video or
input 0 to end the script.  
Videos are saved in the current folder.

### GUI version
Run by `python pull-yt-video-gui.py`, paste link to video and click `Download`.
When video is downloaded and merged a popup will show up, after clicking OK you can paste next link.  
Videos are saved in your `Downloads` folder, it can be changed with `Browse...` button.

### Building standalone app
App contains everything (python, ffmpeg), so it can be copied to another computer and run without installing anything.

| System  | Setup               | Build               | Result                    |
|---------|---------------------|---------------------|---------------------------|
| Windows | `setup.bat`         | `build.bat`         | `dist\yt-downloader.exe`  |
| Linux   | `./setup_lin.sh`    | `./build_lin.sh`    | `dist/yt-downloader`      |
| macOS   | `./setup_macos.sh`  | `./build_macos.sh`  | `dist/yt-downloader.app`  |

ATT:
- app has to be built on the system it is made for, it is not possible to build Linux or macOS version on Windows
- close the app before running build again, otherwise build will fail
- on macOS app is not signed, so first time it has to be opened by right click -> Open
- yt-dlp has to be updated from time to time (`pip install -U yt-dlp`) and app built again, because YouTube changes things

That's all for now ;)
