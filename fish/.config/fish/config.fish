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
alias config="zellij a config"

alias ll="lsd -al"
alias ls="lsd"


 BEGIN opam configuration
# This is useful if you're using opam as it adds:
   - the correct directories to the PATH
#   - auto-completion for the opam binary
 This section can be safely removed at any time if needed.
test -r '/home/sileanth/.opam/opam-init/init.fish' && source '/home/sileanth/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
