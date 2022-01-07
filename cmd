ffmpeg -i filename.mp4:hls:manifest.m3u8 -c copy -bsf:a aac_adtstoasc output.mp4
