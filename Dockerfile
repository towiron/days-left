FROM golang:1.21-alpine AS builder

WORKDIR /usr/local/src

# Dependencies
COPY ["go.mod", "go.sum", "./"]
RUN go mod download

# Build
COPY . .
RUN go build -o ./bin/app cmd/days-left/main.go

FROM alpine AS runner

COPY --from=builder /usr/local/src/bin/app /
COPY . .

CMD ["/app"]