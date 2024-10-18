FROM rust:latest as build

COPY ./ ./

RUN \
  cargo build --release

EXPOSE 8080

ENTRYPOINT ["./target/release/bitvault"]
