
POSITION=$(echo '{ "command": ["get_property_string", "time-pos"] }' | socat - $HOME/.mpv/socket | jq .data | tr '"' ' ' | cut -d'.' -f 1)

REMAINING=$(echo '{ "command": ["get_property_string", "time-remaining"] }' | socat - $HOME/.mpv/socket | jq .data | tr '"' ' ' | cut -d '.' -f 1)

# METADATA=$(echo '{ "command": ["get_property", "filtered-metadata", "filename"] }' | socat - $HOME/.mpv/socket )
FILENAME=$(echo '{ "command": ["get_property", "filename"] }' | socat - $HOME/.mpv/socket | jq ".data")

# TITLE=$(echo '{ "command": ["get_property", "title"] }' | socat - $HOME/.mpv/socket )
# METADATA=$(echo '{ "command": ["get_property", "filtered-metadata"] }' | socat - $HOME/.mpv/socket | jq ".data.Artist, .data.Album, .data.Title")

# echo $METADATA
echo $FILENAME
# echo $TITLE
# printf '%d:%02d:%02d' $(($POSITION/3600)) $(($POSITION%3600/60)) $(($POSITION%60))
# printf ' %d:%02d:%02d\n' $(($REMAINING/3600)) $(($REMAINING%3600/60)) $(($REMAINING%60))
