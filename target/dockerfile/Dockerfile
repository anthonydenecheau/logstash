# logstach/Dockerfile
FROM docker.elastic.co/logstash/logstash:6.2.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
COPY ./logstash.conf /usr/share/logstash/pipeline/
