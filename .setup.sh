# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew install wget python-pip

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy files over
rm -f ~/.zshrc && cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
