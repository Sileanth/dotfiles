if status is-interactive
    # Commands to run in interactive sessions can go here
end

 set -U EDITOR nvim
 set -U REPOS ~/repos
 set -U STUDIA ~/repos/studia

# starship prompt
starship init fish | source



# aliases
alias lg="lazygit"

alias ll="lsd -al"
alias ls="lsd"

