FROM index.docker.io/library/golang:1.16-alpine@sha256:5616dca835fa90ef13a843824ba58394dad356b7d56198fb7c93cbe76d7d67fe

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /webapp

EXPOSE 8080

ENTRYPOINT ["/webapp"]
