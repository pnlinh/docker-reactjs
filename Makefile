install: build run

build:
	docker-compose build --no-cache

start: run

run:
	docker-compose up -d

restart:
	docker-compose restart

stop:
	docker-compose kill

destroy:
	docker-compose down

logs:
	docker-compose logs -ft

shell:
	docker-compose exec app sh

ps: status

status:
	docker-compose ps

ip:
	docker inspect reactjs | grep \"IPAddress\"
