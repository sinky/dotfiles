#!/bin/env

if [ -f "$HOME/.zshrc" ]; then 
  echo "Moving $HOME/.zshrc to $HOME/.zshrc.pre-my-dotfiles"; 
  mv "$HOME/.zshrc" "$HOME/.zshrc.pre-my-dotfiles"
fi

ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
