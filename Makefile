
NAME=wthkiste/ark-server
VERSION=1.0.0

.PHONY: build run

build:
	docker build -t $(NAME):$(VERSION) .

run:
	docker run -d --name ark-server -p 27015:27015 -v data:/home/steam/Ark $(NAME):$(VERSION)

debug:
	docker run --rm -it -p 27015:27015 -v data:/home/steam/Ark $(NAME):$(VERSION)

