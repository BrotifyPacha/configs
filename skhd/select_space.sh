#/bin/sh

if [ $# -lt 1 ] ; then
    echo "usage: select_space <prev|nxt>"
    exit 1
fi

current=$(yabai -m query --spaces --space | jq '.index')

direction=$1

# echo $current

if [ "$direction" = "prev" ] ; then
    let "new = current - 1"
else
    let "new = current + 1"
fi

osascript -e "tell application \"System Events\" to keystroke \"$new\" using control down"
