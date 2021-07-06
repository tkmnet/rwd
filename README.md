# rwd
Registered working directory command
You can jump to the named directory from any where.

## Usage
```sh
# Register current directory to rwd with [KEY].
rwd [KEY] # the empty key is available; it will be replaced "_default".

# Jump to a refistered working directory.
rcd [KEY]
```

## Installation
1. Clone this repository. I recommend to clone to `~/.rwd` because rwd will create file in `~/.rwd`.
```sh
git clone https://github.com/tkmnet/rwd.git ~/.rwd
```
2. Add following line to `~/.bashrc`. If you put rwd in a place other than `~/.rwd`, then replace `$HOME/.rwd`.
```
source $HOME/.rwd/rwd.sh
```
* If you are using csh families, you can use `rwd.csh`.
