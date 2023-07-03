#!/bin/env python

from pathlib import Path
import subprocess
import re
import sys
import os


regex = re.compile(r"([0-9A-Za-z_-]{11})[\]|\)]?\.[m|w]")

if len(sys.argv) > 1:
    x = Path(sys.argv[1])
else:
    x = Path('.')


def _filter_files():
    files: list = []

    for file in filter(lambda y: y.is_file(), x.iterdir()):
        file = str(file)
        result = regex.search(file)

        if result:
            files.append(result.group(1))

    if files:
        return files
    else:
        exit('Abort!\nNO CORRESPONDING FILES WERE FOUND')


def download():
    files: list = _filter_files()
    length = len(files)

    os.chdir(x)
    for file in files:
        subprocess.run(
            [
                'yt-dlp',
                '--embed-thumbnail',
                '--embed-chapters',
                '--embed-subs',
                '-f mp4',
                file
            ]
        )

    subprocess.run([
        'dunstify',
        '-u', 'normal',
        '-r', '4753',
        'YouTube Video Update:',
        f"Stats: {length} file{'s' if length > 1 else ''}"
    ])


if __name__ == '__main__':
    download()
