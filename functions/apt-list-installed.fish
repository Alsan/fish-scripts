function apt-list-installed --description alias\ apt-list-installed\ dpkg\ -l\ \|\ grep\ \"\^ii\"\ \|\ sed\ \"s_\ \ _\\t_g\"\ \|\ cut\ -f\ 2
    dpkg -l | grep "^ii" | sed "s_  _\t_g" | cut -f 2 $argv

end
