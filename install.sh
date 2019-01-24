#!/bin/env

if [ -f "$HOME/.zshrc" ]; then 
  echo "Moving $HOME/.zshrc to $HOME/.zshrc.bak"; 
  mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
