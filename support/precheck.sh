echo 'Checking dependencies...'
echo ''

# Define the directories
synology_drive="$HOME/SynologyDrive"
nas_mount="/Volumes/home"

# Initialize the variable
default_path=""

# Check if the directories exist
if [ -d "$synology_drive" ]; then
    default_path="$synology_drive"
elif [ -d "$nas_mount" ]; then
    default_path="$nas_mount"
fi

# Print the path of the first existing directory
echo $default_path

# @todo: Ask for SynologyDrive or NAS Mount
echo "What is the Path to the Network Folder? (default: $default_path)"
read nas_folder
nas_folder=${nas_folder:-"$default_path"}
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