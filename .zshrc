# autocomplete
autoload -Uz compinit && compinit

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# prompt with git info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'
GIT_PROMPT_PREFIX="%B%F{026} λ "
GIT_PROMPT_SUFFIX="%f%b"
git_info() {
  [ ! -z "$vcs_info_msg_0_" ] && echo "$GIT_PROMPT_PREFIX$vcs_info_msg_0_$GIT_PROMPT_SUFFIX"
}
PROMPT='%B%F{057}%~%f$(git_info) %F{018}%B> %f%b'

# bat color theme
export BAT_THEME="GitHub"

# color ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
