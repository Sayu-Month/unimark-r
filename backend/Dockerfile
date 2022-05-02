FROM rust:1.60.0 AS builder

WORKDIR /backend
COPY . .

RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install cargo-edit
RUN cargo install sqlx-cli

ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}

RUN sqlx db create -D ${DATABASE_URL}
RUN sqlx migrate run -D ${DATABASE_URL}

RUN cargo build --release
RUN cargo install --path .

CMD ["backend"]
