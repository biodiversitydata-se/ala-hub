run:
	./gradlew bootRun

run-docker:
	./gradlew clean build
	docker compose build --no-cache
	docker compose up --detach

release:
	../sbdi-install/utils/make-release.sh
