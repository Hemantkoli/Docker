FROM golang:1.16-alpine

ENV GO111MODULE off

## Directory within image
RUN mkdir /GoApp

## copy everything in the root directory
## into our /app directory
COPY ./GoApp/*.go /GoApp

WORKDIR /GoApp

## compile the program
RUN go build

## Execute the binary
ENTRYPOINT ["/GoApp/GoApp"]
CMD ["--input", "Hello World!!!"]