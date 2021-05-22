FROM golang:1.15

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"
ENV GO111MODULE=on
ENV CGO_ENABLED=1

COPY . .

EXPOSE 8080

CMD ["go", "run", "./server.go"]