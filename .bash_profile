# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
export WORKON_HOME="$HOME/.virtualenvs"
source "/usr/local/bin/virtualenvwrapper.sh"
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
      [ -r "$file" ] && source "$file"
done
unset file
