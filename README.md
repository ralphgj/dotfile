# dotfile
zsh, vim, git, curl and python3.5 must be installed firstly!

# Usage

```bash
sudo apt install zsh vim git curl python3.5

./install.sh

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe

# C-family languages, Go(need Go), JavaScript(need Node.js and npm), Rust(need Rust)
./install.py --clang-completer --gocode-completer --tern-completer --racer-completer
```