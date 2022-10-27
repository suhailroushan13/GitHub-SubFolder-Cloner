clear
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESET="\e[0m"
ENDCOLOR="\e[0m"
bold=$(tput bold)
pwd=$(pwd)
branch=""
master="master"
main="main"
echo -e "${YELLOW}************************************"
echo -e "${GREEN}${bold}Welcome to GitHub SubFolder Cloner"
echo -e "By @suhailroushan13 @Abdul535"
echo -e "${YELLOW}************************************${ENDCOLOR}"

read -p "${bold}Enter the GitHub Repository SSH URL: " url
echo -e "${CYAN}${bold}GitHub URL is: $url\n${ENDCOLOR}"

read -p "${bold}Enter the SubFolder Name From The Repository: " folder
echo -e "${MAGENTA}${bold}Cloning Folder Name is: $folder\n${ENDCOLOR}"

read -p "${bold}Enter the Branch Name of the Repo Example (master/main) : " branch
echo -e "${YELLOW}${bold}Branch Name is: $branch\n${ENDCOLOR}\n"

read -p "${bold}Enter the Folder Name Which You Want to Save In Local (Your-Folder-Name)/${folder} : " folderName
echo -e "${YELLOW}${bold}Your Folder Name is: $folderName\n${ENDCOLOR}\n"

mkdir $folderName
cd $folderName
git init 
git remote add -f origin $url
git config core.sparseCheckout true
git sparse-checkout set $folder
git pull origin $branch
echo -e "${GREEN}${bold}Cloning the SubFolder from GitHub is Completed\nInside The Folder Name \n: $folderName${ENDCOLOR}"
echo -e "${GREEN}${bold}Full Path of That Folder \n: $pwd/$folderName${ENDCOLOR}"
