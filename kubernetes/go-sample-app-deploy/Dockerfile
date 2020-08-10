FROM golang:1.14.2-alpine3.11 as builder
COPY ./main.go ./

RUN apk update && apk add git
RUN go get -u github.com/gin-gonic/gin
RUN go build -gcflags "-N -l" -o /sample-app ./main.go

FROM alpine:3.7
COPY --from=builder ./sample-app .
ENTRYPOINT ["./sample-app"]
