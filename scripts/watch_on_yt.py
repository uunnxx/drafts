#!/usr/bin/env python3


import re
import sys
import subprocess

reg = re.compile(r"\[?(.{11})\]?\.[mw]")


if len(sys.argv) > 1:
    filename = sys.argv[1]
else:
    raise ValueError('Provide a file.')


def run(opts: list):
    subprocess.run(opts)


def get_link():
    if result := reg.search(filename):
        return result.group(1)


def linkify():
    return f'https://youtu.be/{get_link()}'


if __name__ == '__main__':
    run(['brave-browser', '--incognito', linkify()])
