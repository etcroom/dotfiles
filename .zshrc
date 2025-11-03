# Terminal 設定
export TERM=xterm-256color

# プロンプトの設定
autoload -U colors && colors
PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f %# '

# 補完の有効化
autoload -U compinit && compinit

# エイリアス設定
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias grep="grep --color=auto"

# コマンド補完時にリストアップ
setopt AUTO_LIST

# スペルミスを訂正
setopt CORRECT

# 見やすい ls のカラー設定
export LS_COLORS="di=36;49:ln=35;49:so=32;49:pi=33;47:ex=31;49:bd=34;46:cd=34;47"

# pyenv の初期化
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
