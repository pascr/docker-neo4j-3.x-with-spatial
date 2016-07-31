FROM neo4j:3.0
RUN /var/lib/neo4j/bin/neo4j stop

WORKDIR /var/lib/neo4j

#Get and install the spatial plugin
RUN wget https://github.com/neo4j-contrib/m2/blob/master/releases/org/neo4j/neo4j-spatial/0.20-neo4j-3.0.3/neo4j-spatial-0.20-neo4j-3.0.3-server-plugin.jar?raw=true -O /tmp/neo4j-spatial-0.20-neo4j-3.0.3-server-plugin.jar

RUN cp /tmp/neo4j-spatial-0.20-neo4j-3.0.3-server-plugin.jar /var/lib/neo4j/plugins/

RUN /var/lib/neo4j/bin/neo4j start

# Expose the Neo4j browser to the host OS on port 7474, 7473 and 1337
EXPOSE 7474
EXPOSE 7473
EXPOSE 1337