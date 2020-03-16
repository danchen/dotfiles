Install
-------

	# packages
    brew tap homebrew/command-not-found
	brew tap jhawthorn/fzy
	brew tap thoughtbot/formulae
	brew install autojump coreutils fzy grc hub repo rcm terminal-notifier tmux
	
	# oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# initialize dotfiles
	git clone git@github.com:danchen/dotfiles.git ~/.dotfiles
    export RCRC=$HOME/dotfiles/rcrc
	rcup

	# rvm
	curl -sSL https://get.rvm.io | bash -s stable
