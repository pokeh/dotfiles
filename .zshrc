alias ll="ls -al"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# show pwd
PROMPT="%~$ "

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
source ~/ghq/github.com/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

