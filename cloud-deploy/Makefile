container:
	rm -f double-cross-region-replication-1.2.1.jar
	cp ../target/double-cross-region-replication-1.2.1.jar .
	docker build -t xtracdev/doublecx .

push:
	docker push xtracdev/doublecx
