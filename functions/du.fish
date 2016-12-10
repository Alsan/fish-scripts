function du --description alias\ du\ du\ -h\ .\ \|\ grep\ \"\\./\[a-z.-\]\*\\\$\"
    command du -h . | grep "\./[a-z.-]*\$" $argv

end
