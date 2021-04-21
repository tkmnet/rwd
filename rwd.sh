mkdir -p $HOME/.rwd/entry
rwd() { NAME="_default"; if [ $# -ne 0 ]; then NAME="$1"; fi; pwd > "$HOME/.rwd/entry/$NAME"; }
rcd() { NAME="_default"; if [ $# -ne 0 ]; then NAME="$1"; fi; if [ -e "$HOME/.rwd/entry/$NAME" ]; then cd $(cat "$HOME/.rwd/entry/$NAME"); else echo $NAME is not registered; fi; }
_rwdcomp() { local cur prev opts; _get_comp_words_by_ref -n : cur prev; COMPREPLY=( $(compgen -W "$(ls -1 $HOME/.rwd/entry)" -- "${cur}") ); }
complete -F _rwdcomp rwd
complete -F _rwdcomp rcd

