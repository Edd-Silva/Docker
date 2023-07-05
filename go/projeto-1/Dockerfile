#Um exemplo simples de multi stage no Docker
FROM golang AS build


WORKDIR /app
ADD . /app
RUN go build -o hellogo

FROM alpine

WORKDIR /app
COPY --from=build /app/hellogo /app

ENTRYPOINT ./hellogo
