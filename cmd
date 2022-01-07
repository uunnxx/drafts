ffmpeg -i filename.mp4:hls:manifest.m3u8 -c copy -bsf:a aac_adtstoasc output.mp4


gnome-parallel_commands

#!/bin/bash

for cmd in "$@"; do {
  echo "Process \"$cmd\" started";
  $cmd & pid=$!
  PID_LIST+=" $pid";
} done

trap "kill $PID_LIST" SIGINT

echo "Parallel processes have started";

wait $PID_LIST

echo
echo "All processes have completed";


# parallel_commands "cmd arg1 arg2" "cmd1 arg1 arg2"
