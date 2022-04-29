FROM rust:1.60.0 AS builder

WORKDIR /backend
COPY Cargo.toml Cargo.toml

RUN mkdir src
RUN echo "fn main(){}" > src/main.rs
RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install cargo-edit
RUN cargo build --release

COPY . .
RUN rm -f target/release/deps/backend*
RUN cargo build --release

CMD ["backend"]
