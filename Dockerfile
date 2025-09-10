FROM golang:1.25.1-alpine

WORKDIR /app

# Копируем модули и зависимости
COPY go.mod ./
copy go.sum ./
run go mod download

# Копируем исходный код
COPY *.go ./
COPY tracker.db ./

# Собираем приложение
RUN go build -o /sprint12-final

EXPOSE 8080

CMD ["/sprint12-final"]

