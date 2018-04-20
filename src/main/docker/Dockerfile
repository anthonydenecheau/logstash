FROM debian:latest

# Ensure there are enough file descriptors for running Fluentd.
RUN ulimit -n 65536

# Disable prompts from apt.
ENV DEBIAN_FRONTEND noninteractive

# Install prerequisites, ruby, and fluentd.
RUN apt-get update && \
    apt-get install -y -q build-essential wget && \
    wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz && \
    tar -xzvf ruby-install-0.6.0.tar.gz && \
    cd ruby-install-0.6.0/ && \
    make install && \
    ruby-install --system ruby 2.3.0 && \
    gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc && \
    fluentd --setup ./fluentd && \
    mkdir -p /etc/fluent/plugin && \
    gem install fluent-plugin-kubernetes_metadata_filter fluent-plugin-loggly && \
    apt-get remove -y build-essential wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy the Fluentd configuration file.
COPY fluentd.conf ./fluentd/fluentd.conf

# Copy the entrypoint script
COPY run.sh ./run.sh

# Execute the entrypoint
CMD bash -c "./run.sh"