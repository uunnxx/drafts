# asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git  && \
# asdf plugin-add ruby && \
# asdf plugin-add python && \
# asdf plugin-add neovim && \
# asdf plugin-add erlang && \
# asdf plugin-add elixir && \
# asdf plugin-add rust && \
# asdf plugin-add golang && \
echo 'ASDF PLUGINS ADDED' && \
asdf install nodejs latest && \
asdf install ruby latest && \
asdf install python latest && \
asdf install python 2.7-dev && \
asdf install neovim nightly && \
asdf install erlang latest && \
asdf install elixir latest && \
asdf install rust latest && \
asdf install golang latest && \
echo 'ASDF LATEST VERSION OF PACKAGES INSTALLED'
