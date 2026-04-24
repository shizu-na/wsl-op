# wsl-op: Open files/URLs with a spinner animation
op() {
    trap 'tput cnorm; echo; return' INT TERM
    (explorer.exe "${@:-.}" > /dev/null 2>&1 &)
    local spinner=('⢿' '⣻' '⣽' '⣾' '⣷' '⣯' '⣟' '⡿')
    tput civis
    for i in {0..19}; do
        printf "\rNow Loading... %s" "${spinner[i % 8]}"
        sleep 0.1
    done
    printf "\rNow Loading Done!\n"
    tput cnorm
    trap - INT TERM
}
