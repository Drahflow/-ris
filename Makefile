run: remote
	ssh root@drahflow.name 'killall forallris; cd /opt/forallris; /opt/forallris/forallris'
	sleep 5

remote:
	./make.ey
	rsync -z --progress forallris root@drahflow.name:/opt/forallris

.PHONY: run remote
