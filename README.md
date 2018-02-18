# Dotfiles

Get started on a new machine.

Add an alias for dotfiles
```sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Avoid weird problems
```sh
echo ".dotfiles" >> .gitignore
```

Clone the remote repo
```sh
git clone --bare >URL< $HOME/.dotfiles
```

Checkout the content
```sh
dotfiles checkout
```

When running the checkout command the following might occur:
```sh
error: The following untracked working tree files would be overwritten by checkout:
    .profile
    .bashrc
    .gitignore
    .... whatever
Please move or remove them before you can switch branches.
Aborting
```

This happens if your home directory already has the following files. I usually delete them and run the `dotfiles checkout` again. 

Obviously you don't want to see your entire Home directory when running `dotfiles status`. To disable this, simply run:
```sh 
dotfiles config --local status.showUntrackedFiles no
```