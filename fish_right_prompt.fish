function fish_right_prompt
    set_color $fish_color_autosuggestion ^/dev/null; or set_color 555

    if [ -n "$SSH_CONNECTION" ]
      printf '%s | ' (hostname | head -c 10)
    end
    if [ "$HOME" = (pwd) ]
      printf "~"
    else
      printf (basename (pwd))
    end

    set_color normal

    printf " "

    date "+%H:%M:%S"
end
