FROM rust:latest as build

COPY ./ ./

RUN \
  cargo build --release

RUN mkdir -p /usr/share/zoneinfo

COPY --from=build \
  /usr/share/zoneinfo \
  /usr/share/

COPY --from=build \
  /etc/ssl/certs/ca-certificates.crt \
  /etc/ssl/certs/ca-certificates.crt

COPY --from=build \
  /target/release/bitvault \
  /usr/bin/bitvault

EXPOSE 8080

ENTRYPOINT ["bitvault"]
