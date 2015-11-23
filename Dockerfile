FROM podbox/java8

ENV ELASTICSEARCH_VERSION 2.0.0
RUN (curl -L https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$ELASTICSEARCH_VERSION/elasticsearch-$ELASTICSEARCH_VERSION.tar.gz | gunzip -c | tar x) \
 && mv elasticsearch-$ELASTICSEARCH_VERSION /elasticsearch

RUN useradd -m elasticsearch \
 && chown -R elasticsearch:elasticsearch /elasticsearch

USER elasticsearch
EXPOSE 9200 9300
CMD ["/elasticsearch/bin/elasticsearch"]
