FROM ubuntu

RUN apt-get update && apt-get install cmake build-essential gcc -y

EXPOSE 1234

WORKDIR /app

COPY . .

WORKDIR /app/build

RUN cmake /app 
RUN make client

CMD ["./client"]
