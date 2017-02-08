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

Run setup.py. The vim, bash and zsh setup will symlink all the dotfiles 
to the files in home directory.

```
python setup.py
```

Install Homebrew:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After Homebrew is installed, install brew packages

``` 
<brew_list.txt xargs brew install
```