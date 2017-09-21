.PHONY: run stop start down build db clean test

run:
	docker-compose up
    # docker-compose exec php chown -R www-data:www-data app/cache && rm -rf app/cache/*
    # docker-compose exec php chown -R www-data:www-data app/logs
    # docker-compose exec php php app/console doctrine:schema:update --force 2>/dev/null; true
    # docker-compose exec php php app/console cache:clear 2>/dev/null; true
    # docker-compose exec php php app/console doctrine:fixture:load

stop:
	docker-compose stop

start:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build


db:
	docker-compose exec db mysql -uroot -p"root"

clean:
	sudo rm -rf containers/logs

test: clean build run
