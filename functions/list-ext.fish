function list-ext -d alias\ list-ext\ find\ .\ -type\ f\ \|\ egrep\ -v\ \'git\|svn\'\ \|\ sed\ \'s/.\*\\.//\'\ \|\ sort\ \|\ uniq\ -ci\ \|\ sort\ -nrk1
    find . -type f | egrep -v 'git|svn' | sed 's/.*\.//' | sort | uniq -ci | sort -nrk1 $argv

end
