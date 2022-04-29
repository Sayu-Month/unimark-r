FROM rust:1.60.0 AS builder

WORKDIR /backend
COPY Cargo.toml Cargo.toml

RUN mkdir src
RUN echo "fn main(){}" > src/main.rs
RUN cargo build --release

COPY . .
RUN rm -f target/release/deps/backend*
RUN cargo build --release

FROM debian:buster-slim
COPY --from=builder /backend/target/release/backend /usr/local/bin/backend
CMD ["backend"]
