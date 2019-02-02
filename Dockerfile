FROM golang:1.11

RUN mkdir /home/script
ADD script /home/script

WORKDIR /go/src/app
ARG SRC_TAG

RUN /home/script/get-src.sh $SRC_TAG
RUN go test -v
RUN go install -v

CMD ["app"] 