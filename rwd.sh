mkdir -p $HOME/.rwd/entry
rwd() { NAME="_default"; if [ $# -ne 0 ]; then NAME="$1"; fi; pwd > "$HOME/.rwd/entry/$NAME"; }
rcd() { NAME="_default"; IN="$1"; if [ $# -gt 1 ]; then IN="$1/$2"; fi; SEP=$(echo $IN | sed -e 's%/.*%%' | wc -c); if [ $# -ne 0 ]; then NAME="${IN:0:$(($SEP - 1))}"; fi; if [ -e "$HOME/.rwd/entry/$NAME" ]; then cd $(cat "$HOME/.rwd/entry/$NAME")/${IN:$SEP}; else echo $NAME is not registered; fi; }
_rwdcomp() { local cur prev; _get_comp_words_by_ref -n : cur prev; SEP=$(echo $1 | sed -e 's%/.*%%' | wc -c); if [ $(($SEP - 1)) = ${#prev} ]; then COMPREPLY=( $(compgen -W "$(ls -1 $HOME/.rwd/entry)" -- "${cur}") ); else COMPREPLY=( $(find $(cat "$HOME/.rwd/entry/$prev") | sed -e "s%$(cat "$HOME/.rwd/entry/$prev")%%" | grep "^$cur") ); fi; }

BASHCOMP='/etc/bash_completion'
if [ ! -f $BASHCOMP ];then
BASHCOMP='/etc/profile.d/bash_completion.sh'
fi
if [ -f $BASHCOMP ];then
. $BASHCOMP
complete -F _rwdcomp rwd
complete -F _rwdcomp rcd
fi

