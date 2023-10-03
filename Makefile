generate:
	cd ../cws-back && node swagger.js && echo $PWD && cp -rf ./swagger/config.json ../cws-swagger
build:
	docker buildx build -t puls/swagger .
run: build
	docker run -p 3005:8080 -e SWAGGER_JSON=/data/config.json -v $$PWD/config.json:/data/config.json puls/swagger
