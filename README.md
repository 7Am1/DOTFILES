# DOTFILES repository

## Create the DOTFILES
```bash
mkdir my-repo
cd my-repo
git init

echo "# DOTFILES repository" > README.md
cp file ./file
[...]
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/7Am1/DOTFILES.git
git push -u origin master
```

## Import the DOTFILES
Change the directory for the rofi theme (according to the user name)
```bash
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
./install.sh
```
