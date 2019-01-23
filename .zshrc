# the main RC file (ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc")

# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/dotfiles/zsh/custom"
ZSH_THEME="myazur"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git sudo tmux systemd dirhistory zsh-autosuggestions)

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"


source $ZSH/oh-my-zsh.sh

# User configuration

# export LANG=en_US.UTF-8

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# export ARCHFLAGS="-arch x86_64"

# export SSH_KEY_PATH="~/.ssh/rsa_id"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line
