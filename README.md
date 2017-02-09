## **dotfiles**

Collection of all the all the dotfiles for dev setup.

## **Prerequisites**

1.  iTerm 
2.  Sublime Text
3.  PyCharm
4.  TextWrangler
5.  Git
7.  Homebrew
8.  Prezto
8.  Window Tidy
9.  Copy Clip
10. Super Tab
11. Flux


## **Setup**

Install Homebrew:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After Homebrew is installed, install brew packages

``` 
<brew_list.txt xargs brew install
```

Crate a separate working branch for dotfiles so that master branch is always clean.

```
git checkout -b working

```

Install Prezto after changing from bash to zsh 


```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```
Change to zsh 

```
zsh

```
Get prezto default configuration
```
$ setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
Run setup.py. The vim, bash setup will symlink all the dotfiles 
to the files in home directory.

The zsh setup will symlink .zalias, .zexports, .zextra  

```
python setup.py
```