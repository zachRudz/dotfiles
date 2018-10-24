### About this repo
Manually keeping track of dotfiles (eg: .vimrc, .bashrc, .tmux_conf) is a pain. This method keeps all of your config files in a bare git repository. This way, they're kept in their original directories, you don't have to track each application on a different git repo, and you can track them with version control.

Basically, we use a bare git repository, which means the repo doesn't have a working directory. Consequently, there are a few extra steps to using this repo.

### Restoring this config onto another PC
    # Clone the repo into a bare repo
    git clone --bare [git repo URL] "$HOME/.cfg"
    
    # Create the same "config" alias on the target machine, preferable in .bashrc
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    
    # Checkout the actual content to $HOME
    config checkout
    
    # When that completed successfully, unset the flag to show untracked files (Eg: everything not in this repo)
    config config --local status.showUntrackedFiles no
    
### How to update config
    # Check the status of the git repo
    config status
    
    # Add and commit files
    config add .vimrc
    config commit -m "Updated vimrc file"
    config push


### Troubleshooting
##### Error: "The following untracked workinng tree files would be overitten by checkout..." 

    error: The following untracked working tree files would be overwritten by checkout:
	      .bashrc
	      .gitignore
    Please move or remove them before you can switch branches.
    Aborting
    
Explanation: Your $HOME directory might already have some configurations that would be overwriten by git.

Solution: Backup the files you care about, remove the other ones if you don't care. Re-run the ckechout command (config checkout). 
