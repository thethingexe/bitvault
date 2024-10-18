FROM rust:latest as build

WORKDIR /app

COPY ./ ./

RUN \
  cargo build --release

EXPOSE 8080

ENTRYPOINT ["bitvault"]
