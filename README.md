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
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
Run setup.py

```
python setup.py
```

This will symlink .vimrc and all bash files to the 
to the files in home directory.

Change the default shell from bash to zsh

```
http://apple.stackexchange.com/questions/88278/change-default-shell-from-bash-to-zsh/88296#88296
```

```

jenv enable-plugin export
```

Install vundle for vim

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

```
Open vim and install all the plugins
```
:PluginInstall

```

The zsh setup will symlink .zalias, .zexports, .zfunc and create .zextra for setting the proxy details. 
It will also copy zshrc, zpreztorc and zprofile to
 
```
\Users\<username>\.zprezto\runcoms

```

