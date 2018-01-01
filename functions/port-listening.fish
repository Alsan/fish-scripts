function ports-listening -d 'alias ports-listening netstat -lntu'
    netstat -ltnp $argv
end
