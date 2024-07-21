.PHONEY=build run

PORT=25565

setup:
	# URL to get Minecraft Server 1.21
	wget -O server.jar https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar
	#cp default_server.properties server.properties
	mkdir -p ./world ./merge ./logs

build:
	docker build -t minecraft .

run:
	docker run -v ./world:/app/world -v ./merge:/app/merge -v ./logs:/app/logs -p $(PORT):25565 minecraft:latest
