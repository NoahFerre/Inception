FROM debian:buster

RUN apt update && apt install nginx openssl -y

COPY nginx.conf /etc/nginx/conf.d

RUN openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out example.crt \
            -keyout example.key \
            -subj "/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=www.example.com"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
