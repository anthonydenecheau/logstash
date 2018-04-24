# fluentd/Dockerfile
FROM fluent/fluentd:latest-onbuild

#RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri", "--version", "2.8.6"]
RUN gem install fluent-plugin-secure-forward
RUN gem install fluent-plugin-elasticsearch

ADD fluentd.conf /home/fluent
EXPOSE 24224
EXPOSE 9800

CMD fluentd -c /home/fluent/fluentd.conf -vv