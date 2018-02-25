populate_db:
	@docker-compose exec -t ktabshare_api_1 /bin/bash -c "node /usr/src/app/seeds/bookSeeds.js"