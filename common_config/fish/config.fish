if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    echo (set_color yellow; date +%T; set_color normal)
end

source $HOME/.aliases

