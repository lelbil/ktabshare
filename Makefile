populate_db:
	@docker-compose exec -t ktabshare_api_1 /bin/bash -c "node /usr/src/app/seeds/bookSeeds.js"

restart:
	@docker-compose stop
	@docker-compose rm -f
	@docker-compose up -d --build

start:
	@docker-compose up -d --build