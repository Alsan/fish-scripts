function _run_docer_dnsmasq
	docker run -d --name dnsmasq -p 127.0.0.2:53:53/udp --cap-add=NET_ADMIN \
		andyshinn/dnsmasq \
		-A /tam.gf.com.cn/10.2.121.215 \
		-A /oadev.gf.com.cn/10.2.117.129 \
		-A /sam.gf.com.cn/127.0.0.1
end

function _set_resolv_conf
	set local_dns (grep "127.0.0.2" /etc/resolv.conf)
	if test -z $local_dns
		set immutable (sudo lsattr /etc/resolv.conf | grep 'i')
		if test -z $immutable
			#echo "not immutable"
		else
			sudo chattr -i /etc/resolv.conf
		end

		sudo sed -i "/nameserver/ i nameserver 127.0.0.2" /etc/resolv.conf
	end
end

function _start_docker_dnsmasq
	set docker_service_process (sudo service docker status | cut -d' ' -f3)
	if test -z $docker_service_process
		sudo service docker start
	end

	set ps (docker-ps --filter 'name=dnsmasq')
	if test -z $ps
		_run_docer_dnsmasq; and _set_resolv_conf
	end
end

function docker-dnsmasq --argument-names cmd
	if test -z $cmd
		echo "docker-dnsmasq [start|stop|status]"
		false
	else
		switch $cmd
		case "start"
			_start_docker_dnsmasq
		case "stop"
			docker stop dnsmasq
			docker rm dnsmasq
		case "status"
			docker ps --filter 'name=dnsmasq'
		end
	end
end
