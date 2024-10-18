FROM rust:latest as build

WORKDIR /app

COPY ./ ./

RUN \
  cargo build --release

WORKDIR /app

COPY \
  /app/target/release/bitvault \
  /usr/bin/bitvault

EXPOSE 8080

ENTRYPOINT ["bitvault"]
