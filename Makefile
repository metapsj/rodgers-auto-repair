.PHONY: auth-app hello-app test db-migrate gen-session-secret
.DEFAULT_GOAL := hello-app

test:
	cutest -r ./test/helper.rb ./test/*.rb

#
# auth-app
#

auth-app:
	rackup ./auth-app/config.ru

#
# hello-app
#

hello-app:
	rackup ./hello-app/config.ru

#
# utilities
#
db-migrate:
	sequel -m db/migrate ${DATABASE_URL}

gen-session-secret:
	@ruby -r securerandom -e 'puts SecureRandom.base64(64)'

