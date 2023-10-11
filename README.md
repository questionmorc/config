https://www.atlassian.com/git/tutorials/dotfiles

nvim 0.9.2+  
nvchad  
tmux  
oh-my-posh  

```
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
```

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
N to default theme

TPM for tmux
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


```
git clone --bare git@github.com:questionmorc/config.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```
