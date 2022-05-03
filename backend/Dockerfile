FROM rust:1.60.0 AS builder

WORKDIR /backend
COPY . .

RUN cargo install sqlx-cli
ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}
RUN sqlx db create -D ${DATABASE_URL}
RUN sqlx migrate run -D ${DATABASE_URL}

RUN --mount=type=cache,target=/usr/local/cargo/registry \
    --mount=type=cache,target=/app/target \
    cargo build --release

RUN cargo install --path .

CMD ["backend"]
