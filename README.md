# Dotfiles

## Install

### Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
```

### Node

```
brew install node
```

### Zsh

```
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Pure

```
npm install --global pure-prompt
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
```

### Neovim

```
brew install neovim
mkdir ~/.config/neovim
echo "source dotfiles/vimrc" > ~/.config/nvim/init.vim
```

### Hyper

```
brew cask install hyper
```
