# Dotfiles 1.0

Based on the repo at https://github.com/mattstauffer/dotfiles.git.

## Steps to use it

1. [Install Synology Drive Client](https://www.synology.com/en-ca/support/download/RS1221+?version=7.2#utilities)
1. Setup Synology Drive Client to use on-demand sync for the folder `Drive` and use task name `LostLinkMax`
1. Open the App store and sign in
1. Open Terminal
1. [Create a GitHub personal access token for logging in from the command line.](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token). Give it just full `repo` access. Save that token in a text file or something.
1. Type `git`, hit enter, and follow the prompts to install the command line developer tools
1. Type `git clone https://github.com/nsouto/dotfiles.git ~/dotfiles`, hit enter
1. Type `cd ~/dotfiles`, hit enter
1. Type `./bin/install.sh`, hit enter
1. Profit?

# TODO
- WIP

