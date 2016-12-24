function sqlplus -d 'alias to sqlplus' --argument-names instance_ip
    if test -n "$instance_ip"
        rlwrap $ORACLE_HOME/sqlplus $instance_ip
    else
        echo "syntax: sqlplus [instance ip]"
    end
end
