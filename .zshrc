alias ll="ls -al"

# git
alias gbrd='git branch --merged | egrep -v "develop" | xargs git branch -d'

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

### https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/ ###
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '@ %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} $ '
### add-git-branch-information-to-your-zsh-prompt ###

### ghq + peco ###
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src
### ghq + peco ###

# must be at end of file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
