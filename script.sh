clear
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESET="\e[0m"
ENDCOLOR="\e[0m"
bold=$(tput bold)
folderName="Git-SubFolder-Cloner"
branch=""
master="master"
main="main"
echo -e "${YELLOW}************************************"
echo -e "${GREEN}${bold}Welcome to GitHub SubFolder Cloner"
echo -e "By @suhailroushan13 "
echo -e "${YELLOW}************************************${ENDCOLOR}"
read -p "${bold}Enter the GitHub Repository URL: " url
echo -e "${CYAN}${bold}GitHub URL is: $url\n${ENDCOLOR}"
read -p "${bold}Enter the SubFolder Name From Repository: " folder
echo -e "${MAGENTA}${bold}Cloning Folder Name is: $folder\n${ENDCOLOR}"
read -p "${bold}Enter the Branch Name of the Repo Example (master/main) : " branch
echo -e "${YELLOW}${bold}Branch Name is: $branch\n${ENDCOLOR}\n"
mkdir $folderName
cd $folderName
git init 
git remote add -f origin $url
git config core.sparseCheckout true
git sparse-checkout set $folder
git pull origin $branch
echo -e "${GREEN}${bold}Cloning the SubFolder from GitHub is Completed inside The Folder\n: $folderName${ENDCOLOR}"