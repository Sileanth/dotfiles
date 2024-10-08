if status is-interactive
    # Commands to run in interactive sessions can go here
end

 set -U EDITOR nvim
 set -U REPOS ~/repos
 set -U STUDIA ~/repos/studia

# starship prompt
starship init fish | source


function fish_greeting
end

function zellt
  /bin/bash ~/dotfiles/bash-helpers/zell-tabs.sh
end


function zedit
  /bin/bash ~/dotfiles/bash-helpers/zell-edit-floating.sh $argv
end


function zsp
  /bin/bash ~/dotfiles/bash-helpers/zell-pick-session.sh $argv
end



# yazi change current directory when pressing q, press Q to dont change cwd
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end


# aliases
alias lg="lazygit"
alias config="zellij a config"

alias ll="lsd -al"
alias ls="lsd"


alias hex-docs=" caddy file-server --browse --listen :5051"

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#  - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/sileanth/.opam/opam-init/init.fish' && source '/home/sileanth/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration


# zoxide configuration
zoxide init fish | source
#


# BEGIN ghcup configuration
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
# END ghcup configuration
