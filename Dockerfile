FROM golang:latest
RUN go get -u github.com/rakyll/hey
FROM scratch
COPY --from=0 /go/bin/hey .
CMD ["./hey"]
