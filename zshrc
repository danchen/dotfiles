# dependencies
# $ brew tap jhawthorn/fzy
# $ brew install autojump fzy repo terminal-notifier
# rvm
# $ curl -sSL https://get.rvm.io | bash -s stable

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "b4b4r07/enhancd", use:init.sh
zplug "djui/alias-tips"
zplug "hcgraf/zsh-sudo"
zplug "hlissner/zsh-autopair", defer:2
zplug "johnhamelink/rvm-zsh"
zplug "lukechilds/zsh-nvm"
zplug "lukechilds/zsh-better-npm-completion"

zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/textmate", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh

zplug "powerline/powerline", use:"powerline/bindings/zsh"
zplug "psprint/zsh-cmd-architect"

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# settings
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

# Example aliases
alias zconfig="mate ~/.zshrc"
alias zsource="source ~/.zshrc"
alias brewup="brew update && brew upgrade && brew cleanup && brew cask cleanup"

# additional settings
source ~/api.zsh