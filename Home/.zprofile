# ~/.zprofile

# Auto-added upon installation of Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable addition of Git branch to command prompt.
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
