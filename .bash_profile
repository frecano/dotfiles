# Private for stuff not on github (if exists)
[ -f ~/.bash_private ] && source ~/.bash_private

# Custom Prompt
# Working directory, username
# Bright blue for username, white for command
PS1='\[\e[0;34m\]\u :: \W/ ≫ \[\e[0m\]'

# Colors for LS and Grep
# LS Color
export CLICOLOR=1
# GREP Color
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Use Terminal's colors for emacs (Mac OS X)
[[ "$OSTYPE" == "darwin"* ]] && export TERM='xterm-color'

# ------------------------------------------------------
#            Command Aliases / Functions
# ------------------------------------------------------
# la: display files as list, hidden files, human-readable form
alias la="ls -lah"

# pbcopy / pbpaste for OSX clipboard
if [[ "$OSTYPE" == "darwin"* ]]
then
    alias pp=pbpaste
    alias pc=pbcopy
fi

# tree: show tree, limit level to 2 automatically
alias tree="tree -L 2"

# Emacs daemon
export ALTERNATE_EDITOR=""
alias emc='emacsclient -t'