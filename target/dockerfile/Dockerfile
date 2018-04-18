# fluentd/Dockerfile
FROM fluent/fluentd:v1.2-debian
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri", "--version", "2.4.1"]
RUN rm /fluentd/etc/fluent.conf
COPY ./fluent.conf /fluentd/etc 
