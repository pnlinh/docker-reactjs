install:
	rm -fr node_modules build
	docker-compose up -d --build
start:
	docker-compose up -d
stop:
	docker-compose down
logs:
	docker-compose logs -ft
