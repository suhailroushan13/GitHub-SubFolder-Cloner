# GitHub-SubFolder-Cloner 📁⬇️
![Github licence](http://img.shields.io/badge/license-MIT-blue.svg)

<h2>Clone Subfolders From Any GitHub Repository ✅</h2>


## 🧐 About <a name = "about"></a>
GitHub-SubFolder-Cloner is a simple bash script that allows you to clone subfolders from any GitHub repository.
## 🏁 Getting Started <a name = "getting_started"></a>
### Prerequisites
You need to have <b>Ubuntu and GitHub </b> installed on your system.
### Installing
<b>Step 1:</b>
```
git clone --depth=1 git@github.com:suhailroushan13/GitHub-SubFolder-Cloner.git ~/GitHub-SubFolder-Cloner
cd ~/GitHub-SubFolder-Cloner
chmod +x script.sh
bash script.sh
```
<b>Step 2:</b>

<b>zsh (macOS **10.15**+)</b>
```
echo 'alias git-sub="bash ~/GitHub-SubFolder-Cloner/script.sh"' >> ~/.zshrc
source ~/.zshrc
```
<b> bash (Windows/Linux)</b>
```
echo 'alias git-sub="bash ~/GitHub-SubFolder-Cloner/script.sh"' >> ~/.bashrc
source ~/.bashrc
```
<b>To know which shell</b>
```
echo $SHELL
```



## 🎈 Usage <a name="usage"></a>
<b>Type the below command from anywhere to run the script.</b>
```
git-sub
```
## ✍️ Authors <a name = "authors"></a>
- [@suhailroushan13](https://github.com/suhailroushan13) - Idea & Initial work
- [@Abdul535](https://github.com/Abdul535) - Added Custom Folder Name Functionality
See also the list of contributors who participated in this project.
## 🎉 Acknowledgements <a name = "acknowledgement"></a>
- Hat tip to anyone whose code was used
- Inspiration
- References

<h2 align="left"> 🟢 Visitor Count ++</h2>
 <img src="https://profile-counter.glitch.me/GitHub-SubFolder-Cloner/count.svg" />


