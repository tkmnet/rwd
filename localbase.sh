localbase_set() { touch ".basedir.local"; }
get_localbase() { sh -c 'lbd=""; while [ "" = "$lbd" -a "/" != "$(pwd)" ];do if [ -e ".basedir.local" ];then lbd=$(pwd); fi; cd ..; done; echo $lbd'; }
lcd() { cd $(get_localbase); }

