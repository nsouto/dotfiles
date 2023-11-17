#!/bin/zsh

declare -A local_dotfile_symlinks
declare -A remote_dotfile_symlinks
declare -A remote_folder_symlinks

local_dotfile_symlinks=([zshrc]=$HOME/.zshrc [vimrc]=$HOME/.vimrc [gitignore]=$HOME/.gitignore [lambo]=$HOME/.lambo)
for key val in ${(kv)local_dotfile_symlinks}; do
    if test -f "$val"; then
        echo "$val already exists as a folder; deleting."
        rm -fr $val
    fi 
    if [ -d "$val" ]; then
        echo "$val already exists as a file; deleting."
        rm $val
    fi

    ln -s $my_dir/../files/$key $val
done

# @todo: Make sure id_rsa and id_rsa exist *and* have the right permissions
#        (600 for both)
remote_dotfile_symlinks=([ssh]=$HOME/.ssh [aws]=$HOME/.aws [gitconfig]=$HOME/.gitconfig [gmvault]=$HOME/.gmvault [gnupg]=$HOME/.gnupg [zsh_history]=$HOME/.zsh_history)
for key val in ${(kv)remote_dotfile_symlinks}; do
    if test -f "$val"; then
        echo "$val already exists as a folder; deleting."
        rm -fr $val
    fi
    if [ -d "$val" ]; then
        echo "$val already exists as a file; deleting."
        rm $val
    fi

    ln -s $NAS_FOLDER/Dotfiles/$key $val
done


# @todo: Make sure Downloads, Sites and Temp are Synology Drives
#remote_folder_symlinks=([Downloads]=$HOME/Downloads [Sites]=$HOME/Sites [Temp]=$HOME/Temp)
#for key val in ${(kv)remote_dotfile_symlinks}; do
#    if test -f "$val"; then
#        echo "$val already exists as a folder; deleting."
#        rm -fr $val
#    fi
#    if [ -d "$val" ]; then
#        echo "$val already exists as a file; deleting."
#        rm $val
#    fi
#
#    ln -s $HOME/SynologyDrive/$key $val
#done

echo 'XX -- Symlinks done.'
