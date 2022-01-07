#!/bin/sh
TODAY=$(date +'%e')

dunstify -r 77777 -u low "$(date +'%B %e %A %T')" "\n$(ncal -M | sed '1d;s/^/       /' | sed -e "s/$TODAY\b/<u><b>$TODAY<\/b><\/u>/g")"

exit 0
