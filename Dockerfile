# Use Ubuntu as base image
FROM ubuntu

LABEL maintainer="Dax Mickelson <dmickelson@zscaler.com>"

# Put files in a directory (not in root, "/")
WORKDIR /app

# Update container and install needed files.
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends ca-certificates python3-pip nginx

# Add zscaler cert to container.
COPY zscaler_cert.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

# Install needed python modules for mkdocs
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy over the mkdocs directory and build the static files from markdown source.
ADD mkdocs /app
RUN mkdocs build

# Remove default files from nginx default ROOT and then install static mkdocs files there.
RUN rm -rf /var/www/html/*
RUN cp -R site/* /var/www/html

# Run nginx
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
