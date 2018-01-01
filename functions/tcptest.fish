function tcptest --argument-names binfile host port                                                                                  │
	cat $binfile | xxd -r -p | nc $host $port
end

