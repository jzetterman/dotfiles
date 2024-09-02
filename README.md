## Step 1: Install GNU Stow
On MacOS run 
```brew install stow```.
On Debian-based Linux run 
```sudo apt install stow```.

## Step 2: Create dotifles directory
Create dotfiles directory in your home folder by running ```mkdir dotfiles```.

## Step 3: Clone Git repository to dotfiles directory
Run ```git clone git@github.com:jzetterman/dotfiles.git```.

## Step 4: Connect dotfiles using stow
From ~/dotfiles run ```stow .```.

## Step 5: Reload terminal
Run ```source ~/.zshrc``` or restart your terminal
