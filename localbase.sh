set_localbase() { touch ".basedir.local"; }
get_localbase() { sh -c 'lbd=""; while [ "" = "$lbd" -a "/" != "$(pwd)" ];do if [ -e ".basedir.local" ];then lbd=$(pwd); fi; cd ..; done; echo $lbd'; }
lcd() { cd $(get_localbase); }

get_gitbase() { sh -c 'lbd=""; while [ "" = "$lbd" -a "/" != "$(pwd)" ];do if [ -e ".git" ];then lbd=$(pwd); fi; cd ..; done; echo $lbd'; }
gcd() { cd $(get_gitbase); }
