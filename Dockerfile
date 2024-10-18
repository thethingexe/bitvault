FROM rust:latest as build

WORKDIR /app

COPY ./ ./

RUN \
  cargo build --release && \
  cargo run --release

# Expose webport used for the webserver to the docker runtime
EXPOSE 8080

ENTRYPOINT ["bitvault"]
