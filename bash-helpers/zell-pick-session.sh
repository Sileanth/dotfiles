


session=$(zellij list-sessions | sed -r 's/\x1B\[[0-9;]*[a-zA-Z]//g' | grep -o '.* \[' | awk '{print substr($0, 1, length($0)-2)}' | fzf )

zellij a $session
