#!/bin/bash
FILES=~/homestead/Code/novomitrix-loader/n/*.svg
ALL=~/homestead/Code/novomitrix-loader/all.svg

    echo "<svg width=\"291\" height=\"291\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">" >> $ALL
    for f in $FILES
    do
        echo $(cat $f) | grep -o '<g fill.\+<\/g>' >> $ALL
    done
    echo "</svg>" >> $ALL
