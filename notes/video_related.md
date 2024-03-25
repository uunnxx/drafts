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


Noice Reducer
- [Reduce background noise and optimize the speech from an audio clip using ffmpeg](https://superuser.com/questions/733061/reduce-background-noise-and-optimize-the-speech-from-an-audio-clip-using-ffmpeg)
    ```
    # Preview your filter with:
        ffplay <input file> -af lowpass=3000,highpass=200

    # Then
    ffmpeg -i <input_file> -af "highpass=f=200, lowpass=f=3000" <output_file>

    ```
