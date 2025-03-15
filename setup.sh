command -v fish && fish init.fish

curl -Lo ~/.local/bin/dockertools --create-dirs https://github.com/ly4096x/dockertools/raw/master/dockertools
chmod +x ~/.local/bin/dockertools

curl -Lo .local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/autoload/
ln -s ../../.local/share/nvim/site/autoload/plug.vim ~/.vim/autoload/

if command -v nvim ; then
    nvim "+PlugUpdate +qall"
    nvim "+CocInstall coc-git coc-pyright coc-json" # this can't use +qall
elif command -v vim ; then
    vim "+PlugUpdate +qall"
fi

if command -v jj ; then
    jj config set --user ui.default-command log
fi

if command -v fish ; then
    fish init.fish
fi


rm -rf setup.sh init.fish .git README.rst
