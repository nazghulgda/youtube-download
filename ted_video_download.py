import yt_dlp

def download_ted_video(url):
	yt_opts = {
		'outtmpl': '%(title)s.%(ext)s',
		'format' : 'bestvideo+bestaudio/best',
	}

	with yt_dlp.YoutubeDL(yt_opts) as ydl:
		ydl.download([url])

download_ted_video('https://www.ted.com/talks/aimee_eubanks_davis_how_your_unique_story_can_get_you_hired')

