# fluentd/Dockerfile
FROM fluent/fluentd
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri", "--version", "2.8.6"]

RUN rm /fluentd/etc/fluent.conf
COPY ./fluent.conf /fluentd/etc 
