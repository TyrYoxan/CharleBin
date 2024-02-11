install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst

lint:
	@if [ "$(LINTER)" = "md" ]; then \
  		./vendor/bin/phpmd $(FILE_OR_DIR) ansi codesize,unusedcode,naming; \
	elif [ "$(LINTER)" = "cs" ]; then \
	  ./vendor/bin/phpcs $(FILE_OR_DIR); \
	else  \
	  php -l $(FILE_OR_DIR); \
	fi
