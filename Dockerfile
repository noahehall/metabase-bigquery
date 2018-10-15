FROM metabase/metabase as build
RUN mkdir -p /metabase-data
COPY metabase.db /metabase-data
RUN mkdir -p /app
WORKDIR /app
COPY run.sh ./
RUN chmod +x ./run.sh
ENV MB_DB_FILE="/metabase-data/metabase.db"
ENTRYPOINT ./run.sh