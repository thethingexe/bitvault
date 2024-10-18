FROM rust:latest as build

COPY ./ ./

RUN \
  cargo build --release

COPY \
  ./target/release/bitvault \
  /usr/bin/bitvault

EXPOSE 8080

ENTRYPOINT ["bitvault"]
