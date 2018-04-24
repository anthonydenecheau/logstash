FROM fluent/fluentd

WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
RUN gem install fluent-plugin-secure-forward
RUN gem install fluent-plugin-elasticsearch
RUN gem install fluent-plugin-elasticsearch-timestamp-check
ADD fluentd.conf /home/fluent
EXPOSE 24224
EXPOSE 9800

CMD fluentd -c /home/fluent/fluentd.conf -vv