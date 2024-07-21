FROM azul/zulu-openjdk:21-jre-latest
WORKDIR /app
COPY . .
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
EXPOSE 25565
