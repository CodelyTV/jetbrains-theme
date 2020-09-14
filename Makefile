.PHONY: build

build:
	@./gradlew build

replace-color:
	@sh etc/scripts/replace-color.sh
