# Mis configuraciones Neovim

- `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- `cd .config`
- `mkdir plugged/`
- `git clone https://github.com/SolimanHub/nvim.git`
- `git clone git@github.com:SolimanHub/nvim.git`
- `nvim nvim/init.vim`
- `:PlugInstall`
- `:CocInstall coc-json coc-tsserver coc-css coc-cssmodules coc-diagnostic coc-docker coc-emmet coc-html coc-htmldjango coc-html-css-support coc-lightbulb coc-markdownlint coc-markdown-preview-enhanced coc-python coc-phpls coc-sh` (este paso podria demorar)
