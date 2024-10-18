FROM rust:latest as build

WORKDIR /app

COPY ./ ./

RUN \
  cargo build --release && \
  cargo run --release

EXPOSE 8080

ENTRYPOINT ["bitvault"]
