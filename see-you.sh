#!/bin/bash
# USAGE ./see-you.sh [cowboy|cowgirl|cowperson|cowbot|cowpoke|cowhand] [suppress colours]
#
# Displays the message "SEE YOU SPACE COW[suffix]" in (optionally) rainbow block text
#
# If the first argument isn't specified, it will choose one randomly
# Put any value for the second argument to suppress rainbow output; leave unset for rainbow colouring

shopt -s nocasematch

_see_you() {
    local SEE_YOU="$1"
    local NO_RAINBOW="$2"

    # Set up the colours array and escape sequences
    local RESET="\033[m"
    local ESC_SEQ="\x1b[38;5;"
    # local COLOURS=($ESC_SEQ"160;01m" $ESC_SEQ"196;01m" $ESC_SEQ"202;01m" $ESC_SEQ"208;01m" $ESC_SEQ"214;01m" $ESC_SEQ"220;01m" $ESC_SEQ"226;01m" $ESC_SEQ"190;01m" $ESC_SEQ"154;01m" $ESC_SEQ"118;01m" $ESC_SEQ"046;01m" $ESC_SEQ"047;01m" $ESC_SEQ"048;01m" $ESC_SEQ"049;01m" $ESC_SEQ"051;01m" $ESC_SEQ"039;01m" $ESC_SEQ"027;01m" $ESC_SEQ"021;01m" $ESC_SEQ"021;01m" $ESC_SEQ"057;01m" $ESC_SEQ"093;01m")
    local COLOURS
    if [ -z "$NO_RAINBOW" ]; then
        COLOURS=($ESC_SEQ"160;01m" $ESC_SEQ"196;01m" $ESC_SEQ"202;01m" $ESC_SEQ"208;01m" $ESC_SEQ"214;01m" $ESC_SEQ"220;01m" $ESC_SEQ"226;01m" $ESC_SEQ"190;01m" $ESC_SEQ"154;01m" $ESC_SEQ"118;01m" $ESC_SEQ"046;01m" $ESC_SEQ"047;01m" $ESC_SEQ"048;01m" $ESC_SEQ"049;01m" $ESC_SEQ"051;01m" $ESC_SEQ"039;01m" $ESC_SEQ"027;01m" $ESC_SEQ"021;01m" $ESC_SEQ"021;01m" $ESC_SEQ"057;01m" $ESC_SEQ"093;01m")
    fi

    printf "${COLOURS[0]}  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888  \n"
    printf "${COLOURS[1]} d88P  Y88b 888        888              Y88b d88P  d88P\" \"Y88b 888     888  \n"
    printf "${COLOURS[2]}  \"Y888b.   8888888    8888888            Y888P    888     888 888     888  \n"
    printf "${COLOURS[3]}     \"Y88b. 888        888                 888     888     888 888     888  \n"
    printf "${COLOURS[4]}       \"888 888        888                 888     888     888 888     888  \n"
    printf "${COLOURS[5]} Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P  \n"
    printf "${COLOURS[6]}  \"Y8888P\"  8888888888 8888888888          888      \"Y88888P\"   \"Y88888P\"  \n"
    printf "${COLOURS[7]}  .d8888b.  8888888b.     d8888  .d8888b.  8888888888    \n"
    printf "${COLOURS[8]} d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888       \n"
    printf "${COLOURS[9]}  \"Y888b.   888   d88P d88P 888 888        8888888    \n"
    printf "${COLOURS[10]}     \"Y88b. 8888888P\" d88P  888 888        888   \n"
    printf "${COLOURS[11]}       \"888 888      d88P   888 888    888 888    \n"
    printf "${COLOURS[12]} Y88b  d88P 888     d8888888888 Y88b  d88P 888  \n"
    printf "${COLOURS[13]}  \"Y8888P\"  888    d88P     888  \"Y8888P\"  8888888888     \n"

    local LAST_LINE_OPTIONS=(cowboy cowgirl cowperson cowbot cowpoke cowhand)
    if [ -z "$SEE_YOU" ]; then
        local SEE_YOU=${LAST_LINE_OPTIONS[$(($RANDOM % ${#LAST_LINE_OPTIONS[@]}))]}
    fi
    case $SEE_YOU in
        cowboy | boy)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P     \n"
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 888  \"88b  d88P\" \"Y88b Y88b d88P   \n"
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 8888888K.  888     888   Y888P    \n"
            printf "${COLOURS[17]} 888        888     888 888d88888b888 888  \"Y88b 888     888    888    \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888    888 888     888    888  \n"
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888  \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888 8888888P\"   \"Y88888P\"     888\n"
            ;;
        cowgirl | girl)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888  .d8888b.  8888888 8888888b.  888     \n" 
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 d88P  Y88b   888   888   Y88b 888     \n" 
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 888          888   888   d88P 888     \n" 
            printf "${COLOURS[17]} 888        888     888 888d88888b888 888  88888   888   8888888P\"  888     \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888    888   888   888 T88b   888     \n" 
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 Y88b  d88P   888   888  T88b  888     \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888  \"Y8888P88 8888888 888   T88b 88888888\n"
            ;;
        cowperson | person)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888 8888888b.  8888888888 8888888b.   .d8888b.   .d88888b.  888b    888  \n"
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 888   Y88b 888        888   Y88b d88P  Y88b d88P\" \"Y88b 8888b   888  \n"
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 888   d88P 8888888    888   d88P  \"Y888b.   888     888 888Y88b 888  \n"
            printf "${COLOURS[17]} 888        888     888 888d88888b888 8888888P\"  888        8888888P\"      \"Y88b. 888     888 888 Y88b888  \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888        888        888 T88b         \"888 888     888 888  Y88888  \n"
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 888        888        888  T88b  Y88b  d88P Y88b. .d88P 888   Y8888  \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888 888        8888888888 888   T88b  \"Y8888P\"   \"Y88888P\"  888    Y888  \n"
            ;;
        cowbot | bot)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. 88888888888   \n"
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 888  \"88b  d88P\" \"Y88b    888   \n"
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 8888888K.  888     888    888   \n"
            printf "${COLOURS[17]} 888        888     888 888d88888b888 888  \"Y88b 888     888    888   \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888    888 888     888    888   \n"
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888   \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888 8888888P\"   \"Y88888P\"     888   \n"
            ;;
        cowpoke | poke)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888 8888888b.   .d88888b.  888    d8P  8888888888   \n"
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 888   Y88b d88P\" \"Y88b 888   d8P   888   \n"
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 888   d88P 888     888 888d88K     8888888   \n"
            printf "${COLOURS[17]} 888        888     888 888d88888b888 8888888P\"  888     888 8888888b    888   \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888        888     888 888  Y88b   888   \n"
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 888        Y88b. .d88P 888   Y88b  888   \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888 888         \"Y88888P\"  888    Y88b 8888888888   \n"
            ;;
        cowhand | hand)
            printf "${COLOURS[14]}  .d8888b.   .d88888b.  888       888 888    888        d8888 888b    888 8888888b.   \n"
            printf "${COLOURS[15]} d88P  Y88b d88P\" \"Y88b 888   o   888 888    888       d88888 8888b   888 888  \"Y88b   \n"
            printf "${COLOURS[16]} 888        888     888 888 d888b 888 8888888888     d88P 888 888Y88b 888 888    888   \n"
            printf "${COLOURS[17]} 888        888     888 888d88888b888 888    888    d88P  888 888 Y88b888 888    888   \n"
            printf "${COLOURS[18]} 888    888 888     888 88888P Y88888 888    888   d88P   888 888  Y88888 888    888   \n"
            printf "${COLOURS[19]} Y88b  d88P Y88b. .d88P 8888P   Y8888 888    888  d8888888888 888   Y8888 888  .d88P   \n"
            printf "${COLOURS[20]}  \"Y8888P\"   \"Y88888P\"  888P     Y888 888    888 d88P     888 888    Y888 8888888P\"   \n"
            ;;
    esac

    printf "$RESET" # Reset colors to "normal"
}

_see_you "$@"
