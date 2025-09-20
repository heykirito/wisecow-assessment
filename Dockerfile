FROM debian:bullseye-slim

WORKDIR /app
RUN apt-get update
RUN apt-get install -y \
    cowsay \
    fortune-mod \
    ncat

ENV PATH="/usr/games:$PATH"

COPY . .

RUN chmod +x ./wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
