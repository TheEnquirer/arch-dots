#!/usr/bin/env sh

# ANSI Color -- Use these variables to easily have different color and format output.
# Make sure to output the reset sequence after colors (f = foreground, b = background),
# and use the 'off' feature for anything you turn on.

initializeANSI() {
  esc=""

  blackf="${esc}[30m"      redf="${esc}[31m"         greenf="${esc}[32m"
  yellowf="${esc}[33m"     bluef="${esc}[34m"        purplef="${esc}[35m"
  cyanf="${esc}[36m"       whitef="${esc}[37m"

  blackb="${esc}[1;30m"    redb="${esc}[1;31m"       greenb="${esc}[1;32m"
  yellowb="${esc}[1;33m"   blueb="${esc}[1;34m"      purpleb="${esc}[1;35m"
  cyanb="${esc}[1;36m"     whiteb="${esc}[1;37m"

  boldon="${esc}[1m"       boldoff="${esc}[22m"      reset="${esc}[0m"
  italicson="${esc}[3m"    italicsoff="${esc}[23m"
  ulon="${esc}[4m"         uloff="${esc}[24m"
  invon="${esc}[7m"        invoff="${esc}[27m"
}

# Note in this first use that switching colors doesn't require a reset first,
# the new color overrides the old one.

numbers (){
    initializeANSI
    cat << EOF
${blackf}1111${reset}${blackb}1111${reset} ${redf}2222${reset}${redb}2222${reset} ${greenf}3333${reset}${greenb}3333${reset} ${yellowf}4444${reset}${yellowb}4444${reset} ${bluef}5555${reset}${blueb}5555${reset} ${purplef}6666${reset}${purpleb}6666${reset} ${cyanf}7777${reset}${cyanb}7777${reset}
${blackf}1111${reset}${blackb}1111${reset} ${redf}2222${reset}${redb}2222${reset} ${greenf}3333${reset}${greenb}3333${reset} ${yellowf}4444${reset}${yellowb}4444${reset} ${bluef}5555${reset}${blueb}5555${reset} ${purplef}6666${reset}${purpleb}6666${reset} ${cyanf}7777${reset}${cyanb}7777${reset}
${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset} ${whitef}8888${reset}${whiteb}8888${reset}
EOF
}

blocks (){
    initializeANSI
    cat << EOF
${blackf}████${reset}${blackb}████${reset} ${redf}████${reset}${redb}████${reset} ${greenf}████${reset}${greenb}████${reset} ${yellowf}████${reset}${yellowb}████${reset} ${bluef}████${reset}${blueb}████${reset} ${purplef}████${reset}${purpleb}████${reset} ${cyanf}████${reset}${cyanb}████${reset}
${blackf}████${reset}${blackb}████${reset} ${redf}████${reset}${redb}████${reset} ${greenf}████${reset}${greenb}████${reset} ${yellowf}████${reset}${yellowb}████${reset} ${bluef}████${reset}${blueb}████${reset} ${purplef}████${reset}${purpleb}████${reset} ${cyanf}████${reset}${cyanb}████${reset}
${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset} ${whitef}████${reset}${whiteb}████${reset}
EOF
}

printf "\033c"
case ${1} in
    b) blocks
    ;;
    n) numbers
    ;;
    a) blocks && numbers
    ;;
    *) blocks
    ;;
esac
