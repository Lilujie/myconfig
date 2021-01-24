#use zinit
source ~/.zinit/bin/zinit.zsh

#use autosuggestions
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

#use highlighting
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

#use theme pure
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

#use completions
zinit ice blockf
zinit light zsh-users/zsh-completions

zinit light zdharma/history-search-multi-word
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

#use omz
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit cdclear -q

zinit ice svn
zinit snippet OMZ::plugins/z

zinit snippet OMZP::command-not-found

zinit snippet OMZP::colored-man-pages

zinit snippet OMZP::cp

zinit snippet OMZP::rand-quote

zinit ice svn
zinit snippet OMZ::plugins/sudo

# zinit self-update
# zinit update --all

source ~/.bash_profile
#alias
alias vim='nvim'
alias vi='nvim'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

bindkey '^o' autosuggest-accept

#history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HISTFILESIZE=20000
setopt SHARE_HISTORY

# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# HomeBrew END

#env path
export PATH="/usr/local/opt/python@3.7/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

alias relay='ssh lilujie@relay.baidu-int.com'


fortune | cowsay
