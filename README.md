This is my .vim folder. 
There are like it, but this one is mine.
Without it, I am useless.
Wihtout me, it is useless.
This is my .vim folder.

This is a .vim folder to quickly replicate a great working environemtn across machines. To set this up on you machine

1) git fetch this using recursive, or download this as a zip file.
    git clone git@github.com:FarMcKon/vim_dotfiles.git
2) link ~/.vim folder to the vim_dotfiles folder
    ln -s vim_dotfiles ~/.vim 
3) Link ~/.vim/.vimrc file to your ~/.vimrc file
    ln -s vim_dotfiles/.vimrc ~/.vimrc
4) Start vim, and check if all kinds of nifty stuff has loaded
   ',nt<enter>' should open NerdTree in the current directory


