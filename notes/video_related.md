## Video Related Notes


```
# webm to mp4
ffmpeg -fflags +genpts -i 1.webm -r 24 1.mp4

ffmpeg -i input.webm -c copy output.mp4
```


[Download youtube-channel](https://write.corbpie.com/downloading-a-youtube-channel-with-yt-dlp/)
```
# tldr;
yt-dlp -f 'bv*[height>=720]+ba' --embed-thumbnail --embed-metadata --download-archive FootheFlowerhorn.txt https://www.youtube.com/c/FootheFlowerhorn/videos -o '%(channel)s/%(title)s.%(ext)s'
```
