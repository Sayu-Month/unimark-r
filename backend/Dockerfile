FROM ghcr.io/sayu-month/rust1.60-sqlx:latest AS builder
ENV PKG_CONFIG_ALLOW_CROSS=1

WORKDIR /backend
COPY . .

ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}
RUN sqlx db create -D ${DATABASE_URL}
RUN sqlx migrate run -D ${DATABASE_URL}

RUN --mount=type=cache,target=/usr/local/cargo/registry \
    --mount=type=cache,target=/app/target \
    cargo build --release

RUN cargo install --path .

FROM gcr.io/distroless/cc-debian10
COPY --from=builder /backend/target/release/backend /usr/local/bin/backend

CMD ["backend"]
