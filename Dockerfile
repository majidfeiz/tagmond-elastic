# Dockerfile for Elasticsearch 6.8.15

# Use the official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.15

# Set environment variables
ENV discovery.type=single-node
ENV xpack.security.enabled=true

# Copy the Elasticsearch configuration file containing the default password
COPY elasticsearch.yml /usr/share/elasticsearch/config/

EXPOSE 9200