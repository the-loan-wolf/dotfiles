if status is-interactive
    # Commands to run in interactive sessions can go here
    #starship init fish | source
    #and not set -q TMUX
    #if tmux has-session -t home
    #	exec tmux attach-session -t home
    #else
    #   tmux new-session -s home
    #end
    starship init fish | source
    alias ll='exa -al --icons'
    alias la='exa -a --icons'
    alias ls='exa --icons'
    alias pk="pkg list-all 2> /dev/null | grep -v -E '^Listing\.\.\.' | sed -r 's#^([^/]+)/.*\$#\\1#' | fzf --multi --preview 'pkg show {} 2> /dev/null | bat --color=always --pager=never --decorations=never --language=yaml' --preview-window='down:50%:wrap' | xargs -ro nala install"
    alias love='zip -9 run.love *.lua'
	# Start tmux if it's not running
    
end

bind -M insert \cg forget

function forget
    set -l cmd (commandline | string collect)
    printf "\nDo you want to forget '%s'? [Y/n]\n" $cmd
    switch (read | tr A-Z a-z)
        case n no
            commandline -f repaint
            return
        case y yes ''
            history delete --exact --case-sensitive -- $cmd
            commandline ""
            commandline -f repaint
    end
end
