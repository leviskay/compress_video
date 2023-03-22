#!/bin/bash

ls -1 -tr | grep ".mkv$" | sort -r | fzf | xargs -I{} ffmpeg -i {} -c:v libx265 -crf 28 -c:a copy $(basename {} .mkv)_compressed.mp4
