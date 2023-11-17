echo 'Checking dependencies...'
echo ''

# @todo: Ask for SynologyDrive or NAS Mount
echo "What is the Path to the Network Folder (SynologyDrive or Direct NAS Mount)?"
read nas_folder
nas_folder=${nas_folder:-"$HOME/SynologyDrive"}
export NAS_FOLDER=$nas_folder

# @todo:# figure out the best way to check if the necessary folders are up
#if [ ! -d "$HOME/Library/CloudStorage/SynologyDrive-LostLinkMax" ]
#then
#    echo "Please link Synology Drive first."
#    exit
#fi

prompt_quit_if_no "Do you have SSH keys linked that have access to everything important?"
prompt_quit_if_no "Have you signed into the Mac App Store manually?"

echo ''

echo 'XX -- Precheck done.'