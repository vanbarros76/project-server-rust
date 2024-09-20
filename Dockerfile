FROM rust

WORKDIR /server
COPY src/main.rs src/main.rs
COPY Cargo.toml ./Cargo.toml
RUN cargo build -r

ENTRYPOINT ["cargo", "r", "-r"]