FROM rust:1.60.0

WORKDIR /backend

COPY . .

RUN rustup component add rustfmt
RUN rustup component add clippy

RUN cargo build --release
RUN cargo install --path .

CMD ["backend"]
