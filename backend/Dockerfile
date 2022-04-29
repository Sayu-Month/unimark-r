FROM rust:1.60.0

WORKDIR /backend

COPY . .

RUN cargo build --release
RUN cargo install --path .

CMD ["backend"]
