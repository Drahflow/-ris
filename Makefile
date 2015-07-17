run:
	./make.ey
	rsync -z --progress forallris root@drahflow.name:/opt/forallris
	ssh root@drahflow.name 'killall forallris; /opt/forallris/forallris'
	sleep 5
