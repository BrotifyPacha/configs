#/bin/zsh

# Фокусит существующее окно, или запускает приложение

if [[ "$#" < 2 ]] ; then
    echo "Usage: $0 <AppName> <StartCommand>"
    exit 1
fi

echo $1 $2

echo "yabai -m query --windows | jq '.[] | select(.app==\"$1\") | .id'"
windowID=$(yabai -m query --windows | jq ".[] | select(.app==\"$1\") | .id" | head -n 1)
if [[ "$windowID" != "" ]] ; then
    yabai -m window --focus $windowID
    exit 0
fi

shift
$@
