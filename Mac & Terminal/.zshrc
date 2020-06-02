# ~/.zshrc

##
# Autoloads
#
autoload -Uz compinit && compinit

##
# Functions
#

# Enable addition of Git branch to command prompt.
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

##
# Variables
#

# Add `cd`-compatible variable (prefix w/ `$` during `cd` operation, not in declaration below).
# <variable>=/path/to/destination/

##
# Aliases
#

# Reformat `date` output as ISO-8601.
alias date='date +"%Y-%m-%d %H:%M:%S UTC%z"'

# Add alias for list (all, with type indicators, long format).
alias ll='ls -aFl'

# Add alias to clear saved session from Sublime Text.
alias subl_session_clear='rm ~/Library/Application\ Support/Sublime\ Text\ 3/Local/Auto\ Save\ Session.sublime_session'

# Add aliases for Git branch cleaning.
alias git_delete_unmerged_local_except_master_and_dev="git fetch -p && git checkout master && git pull origin master && git branch --merged | grep -v '\*\|master\|dev' | xargs -n 1 git branch -d"
alias git_delete_unmerged_local_except_master_and_staging="git fetch -p && git checkout master && git pull origin master && git branch --merged | grep -v '\*\|master\|staging' | xargs -n 1 git branch -d"
alias git_delete_unmerged_remote_and_local_except_master_and_dev="git fetch -p && git checkout master && git pull origin master && git branch -r --merged | grep -v '\*\|master\|dev' | sed 's/origin\///' | xargs -n 1 git push --delete origin && git branch --merged | grep -v '\*\|master\|dev' | xargs -n 1 git branch -d"
alias git_delete_unmerged_remote_and_local_except_master_and_staging="git fetch -p && git checkout master && git pull origin master && git branch -r --merged | grep -v '\*\|master\|staging' | sed 's/origin\///' | xargs -n 1 git push --delete origin && git branch --merged | grep -v '\*\|master\|staging' | xargs -n 1 git branch -d"

# Add shortcut for common sshes.
# alias ssh_<place>='ssh -i ~/.ssh/<key-file>.pem <user>@<address>'

##
# Exports
#

# Enable automatic coloring of output by type.
export CLICOLOR=1

# Switch color to classic Unix style.
export LSCOLORS=GxFxCxDxBxegedabagaced

# Add path to PHP to start of `$PATH`.
export PATH=/usr/local/php5/bin:$PATH

# Format prompt: foreground black, background white; directory; Git branch; undo foreground, undo background, prompt symbol.
setopt PROMPT_SUBST
export PROMPT='%F{black}%K{white}%1~$(parse_git_branch) %#%f%k '

##
# Other (likely auto-added by apps)
#
