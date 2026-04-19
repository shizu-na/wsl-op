#!/bin/bash

op() {
    # Windows側で実行
    (explorer.exe "${@:-.}" > /dev/null 2>&1 &)

    # アニメーション設定
    local spinner=('⢿' '⣻' '⣽' '⣾' '⣷' '⣯' '⣟' '⡿')
    tput civis # カーソル非表示
    
    echo -ne "Now Loading...  "
    for i in {0..19}; do
        echo -ne "\b${spinner[i % 8]}"
        sleep 0.1
    done
    echo -e "\b Done!"
    
    tput cnorm # カーソル再表示
}
