#!/bin/zsh

# Last updated Brew/app list: October 3, 2020

set +x
#my_dir="$(dirname "$0")"
my_dir="$HOME/dotfiles/bin"
support_dir="$my_dir/../support"

cd $my_dir

# Load functions
source "$support_dir/functions.sh"

# Check and prompt for necessary dependencies
source "$support_dir/precheck.sh" && cd $my_dir

title 'DEPENDENCIES'
source "$support_dir/dependencies.sh" && cd $my_dir
#@todo install hub

title 'SYM LINKS'
source "$support_dir/symlinks.sh" && cd $my_dir

title 'HOMEBREW'
source "$support_dir/brew.sh"

title 'GIT'
git config --global user.name "Nuno Souto"
git config --global user.email "nsouto@lostlink.net"
git config --global core.excludesfile ~/.gitignore
echo 'XX -- Git done.'

title 'OHMYZSH'
source "$support_dir/ohmyzsh.sh" && cd $my_dir

title 'PHP Extensions'
source "$support_dir/php_extensions.sh"

title 'COMPOSER'
source "$support_dir/composer.sh" && cd $my_dir

title 'VALET'
source "$support_dir/valet.sh" && cd $my_dir

title 'NPM'
if [ ! -d "$HOME/.nvm" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    export NVM_DIR=$HOME/.nvm;
    source $NVM_DIR/nvm.sh;
    nvm install 18.15
fi
# @todo all global npm deps

echo 'XX -- NPM done.'

title 'MACOS SETTINGS'
source "$support_dir/mac_settings.sh"

title 'MANUAL STEPS'
source "$support_dir/manual_steps.sh"
