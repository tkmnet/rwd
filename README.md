# rwd
Registered working directory command

## Usage
```sh
# Register current directory to rwd with [KEY].
rwd [KEY] # the empty can be used as a key.

# Jump to a refistered working directory.
rcd [KEY]
```

## Installation
1. Clone this repository. I recommend to clone to `~/.rwd`.
```sh
git https://github.com/tkmnet/rwd.git ~/.rwd
```
2. Add following line to `~/.bashrc`.
```
source $HOME/.rwd/rwd.sh
```
