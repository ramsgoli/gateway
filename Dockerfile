FROM alpine:3.8

# add nginx
RUN apk add -U nginx

# Copy the configuration file
RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/

# Run the server
CMD ["nginx", "-g", "daemon off;"]
