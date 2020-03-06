FROM neo4j:latest

ENV NEO4J_AUTH_USER admin
ENV NEO4J_AUTH_PASS 1234

RUN apt-get update && apt-get install -y curl

RUN export NEO4J_AUTH="${NEO4J_AUTH_USER}/${NEO4J_AUTH_PASS}"

COPY populate-db.sh populate-db.sh
COPY wrapper.sh wrapper.sh

RUN chmod +x populate-db.sh wrapper.sh

ENTRYPOINT ["./wrapper.sh"]