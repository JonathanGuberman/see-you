# Set env variables to configure:
#
# SEE_YOU=[cowboy|cowgirl|cowperson|cowbot|cowhand|cowpoke|random] (default: random)
# SEE_YOU_NO_RAINBOW set to anything to suppress the message colouring (default: unset) 
# SEE_YOU_SLEEP to set the pause time in seconds after displaying the message (default: 1)

SEE_YOU_PLUGIN_DIR=${0:a:h}

_see_you() {
    $SEE_YOU_PLUGIN_DIR/see-you.sh ${SEE_YOU:-"random"} $SEE_YOU_NO_RAINBOW
    sleep ${SEE_YOU_SLEEP:-1}
}

add-zsh-hook zshexit _see_you
