# Mis configuraciones Neovim

- `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- `cd .config`
- `mkdir plugged/`
- `git clone https://github.com/SolimanHub/nvim.git`
- `nvim nvim/init.vim`
- `:PlugInstall`
- `:CocInstall coc-json coc-tsserver` (este paso podria demorar)
