# dependencies
# $ brew tap jhawthorn/fzy
# $ brew tap homebrew/command-not-found
# $ brew install autojump coreutils fzy hub repo terminal-notifier tmux
# rvm
# $ curl -sSL https://get.rvm.io | bash -s stable

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# shell plugins
zplug "b4b4r07/enhancd", use:init.sh
zplug "djui/alias-tips"
zplug "hlissner/zsh-autopair", defer:2
zplug "mollifier/cd-gitroot"
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/copybuffer", from:oh-my-zsh
zplug "plugins/copydir", from:oh-my-zsh
zplug "plugins/copyfile", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/dircycle", from:oh-my-zsh
zplug "plugins/dirhistory", from:oh-my-zsh
zplug "plugins/dirpersist", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/man", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/safe-paste", from:oh-my-zsh
zplug "plugins/singlechar", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/systemadmin", from:oh-my-zsh
zplug "plugins/textmate", from:oh-my-zsh
export ZSH_TMUX_AUTOSTART=true && export ZSH_TMUX_ITERM2=true && zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "plugins/zsh-navigation-tools", from:oh-my-zsh
zplug "powerline/powerline", use:"powerline/bindings/zsh"
zplug "psprint/zsh-cmd-architect"
zplug "supercrabtree/k"
zplug "unixorn/warhol.plugin.zsh"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2

# programming plugins
zplug "johnhamelink/rvm-zsh"
export NVM_LAZY_LOAD=true && zplug "lukechilds/zsh-nvm"
zplug "lukechilds/zsh-better-npm-completion"
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/gulp", from:oh-my-zsh
zplug "plugins/mvn", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "plugins/virtualenvwrapper", from:oh-my-zsh
zplug "plugins/xcode", from:oh-my-zsh

# revision control
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/repo", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# settings
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

# aliases
alias zconfig="mate ~/.zshrc"

# local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local