# Neo4j Community Edition 3.0.3 with spatial plugins

This repository contains a Docker image of the 3.0.3 version of the [Neo4j Community Edition](http://www.neo4j.com/download) Server with the spatial plugin (https://github.com/neo4j-contrib/spatial). 

# Build Docker Image

To build the source from the Dockerfile as an image:

```
docker build -t pascr/neo4j-3.x-with-spatial .
```

# Pull Docker Image

This image is automatically built and is available from the Docker registry. Use the following `pull` command to download the image to your local Docker server.

```
docker pull pascr/neo4j-3.x-with-spatial
```

# Start Neo4j Container

To run the Neo4j image inside a container after either building it or pulling it, run the following docker command.
docker run pascr/neo4j-3.x-with-spatial

```
docker run pascr/neo4j-3.x-with-spatial
```