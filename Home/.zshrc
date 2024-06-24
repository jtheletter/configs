# ~/.zshrc

# Add alias to reformat `date` output as ISO-8601.
alias date='date +"%Y-%m-%d %H:%M:%S UTC%z"'

# Add aliases to delete unmerged Git branches.
alias git_delete_unmerged_local_except_master_and_dev="git fetch -p && git checkout master && git pull origin master && git branch --merged | grep -v '\*\|master\|dev' | xargs -n 1 git branch -d"
alias git_delete_unmerged_local_except_master_and_staging="git fetch -p && git checkout master && git pull origin master && git branch --merged | grep -v '\*\|master\|staging' | xargs -n 1 git branch -d"
alias git_delete_unmerged_remote_and_local_except_master_and_dev="git fetch -p && git checkout master && git pull origin master && git branch -r --merged | grep -v '\*\|master\|dev' | sed 's/origin\///' | xargs -n 1 git push --delete origin && git branch --merged | grep -v '\*\|master\|dev' | xargs -n 1 git branch -d"
alias git_delete_unmerged_remote_and_local_except_master_and_staging="git fetch -p && git checkout master && git pull origin master && git branch -r --merged | grep -v '\*\|master\|staging' | sed 's/origin\///' | xargs -n 1 git push --delete origin && git branch --merged | grep -v '\*\|master\|staging' | xargs -n 1 git branch -d"

# Add alias to list all with type indicators in long format.
alias ll='ls -aFl'

# Add aliases for SSH.
# See also: https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2
# alias ssh_<place>='ssh -i ~/.ssh/<key-file>.pem <user>@<address>'
alias ssh_iant='ssh root@161.35.173.15'

# Add alias to clear saved session from Sublime Text.
alias subl_session_clear='rm ~/Library/Application\ Support/Sublime\ Text\ 3/Local/Auto\ Save\ Session.sublime_session'

# Enable automatic coloring of output by type.
export CLICOLOR=1

# Switch color to classic Unix style.
export LSCOLORS=GxFxCxDxBxegedabagaced

# Format command prompt as foreground black, background white; directory; Git branch; undo foreground, undo background, prompt symbol.
setopt PROMPT_SUBST
export PROMPT='%F{black}%K{white}%1~$(parse_git_branch) %#%f%k '

# Enable Git completion.
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
