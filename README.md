# docker-elasticsearch
```bash
docker run -v /var/local/elasticsearch:/elasticsearch/data -p 9200:9200 -p 9300:9300 --restart always --name elasticsearch -t podbox/elasticsearch
```
