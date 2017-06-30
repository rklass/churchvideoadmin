/home/rarents/bin/ffmpeg -y -i dateiname -acodec aac -ar 44100 -ac 1 -vcodec libx264 aufzeichnung1.mp4
/home/rarents/bin/ffmpeg -y -i dateiname -c copy -copyts aufzeichnung1.mp4
