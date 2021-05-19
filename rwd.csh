mkdir -p $HOME/.rwd/entry
alias rwd 'set NAME="_default"; if ("\!*" != "") set NAME=`echo \!* | sed -e "s/ .*//"`; pwd > "$HOME/.rwd/entry/$NAME";'
alias rcd 'set NAME="_default"; if ("\!*" != "") set NAME=`echo \!* | sed -e "s/ .*//"`; if (-e "$HOME/.rwd/entry/$NAME") cd `cat "$HOME/.rwd/entry/$NAME"`; if (! -e "$HOME/.rwd/entry/$NAME") echo $NAME is not registered;'
alias _rwd_list 'ls -1 $HOME/.rwd/entry'
complete rwd 'p/1/`_rwd_list|tr "\n" " "`/'
complete rcd 'p/1/`_rwd_list|tr "\n" " "`/'

