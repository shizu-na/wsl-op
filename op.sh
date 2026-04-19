# wsl-op: Open files/URLs with a spinner animation
op() {
    (explorer.exe "${@:-.}" > /dev/null 2>&1 &)
    local spinner=('⢿' '⣻' '⣽' '⣾' '⣷' '⣯' '⣟' '⡿')
    tput civis
    echo -ne "Now Loading...  "
    for i in {0..19}; do
        echo -ne "\b${spinner[i % 8]}"
        sleep 0.1
    done
    echo -e "\b Done!"
    tput cnorm
}
