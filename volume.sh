#submited by htor

vol()
{
err="usage: vol [-d|--down]|[-u|--up]"
test $# -ne 1 && echo $err && exit 1

case $1 in
    -d|--down)  amixer set Master unmute 10%- -q ;;
    -u|--up)    amixer set Master unmute 10%+ -q ;;
    -m|--mute)  amixer set Master mute -q ;;
    *)          echo $err
esac

vl="$(amixer get Master | egrep -o '[0-9]+%' | head -1 | tr -d %)"
echo -e "\n\e[1;35m|--\e[0;0m Volume is\e[1;32m $vl\e[1;35m --|\e[0;0m\n"
}
