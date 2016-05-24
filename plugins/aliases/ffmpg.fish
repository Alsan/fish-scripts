function capture --argument-names clip start
	set name (echo $clip | sed 's/\.[^.]*$//')
	set time (echo $start | sed 's/\://g')
	avconv -ss $start -i $clip -t 1 -an -q:v 1 -r 1 -f image2 "$name-$time.jpg"
end
