# RUN Neo4j Docker with initial script

Default user and password

user: admin
password: 1234

```
docker run -v /path/db:/var/lib/neo4j/db 
-p7687:7687 
-p7474:7474 
jg2dev/neo4j
```

With custom auth

```
docker run -v /path/db:/var/lib/neo4j/db 
-p7687:7687 
-p7474:7474 
-e NEO4J_AUTH_USER=neo4j 
-e NEO4J_AUTH_PASS=pruebaneo 
-e NEO4J_AUTH=neo4j/pruebaneo 
jg2dev/neo4j:latest
```