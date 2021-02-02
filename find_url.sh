for entry in `find $1 -print`
do
    if [ -f "${entry}" ]; then
        cat "$entry" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sort -u
    fi
done
