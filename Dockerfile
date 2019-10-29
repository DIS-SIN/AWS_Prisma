FROM prismagraphql/prisma:1.34
ARG PRISMA_CONFIG_PATH
ENV PRISMA_CONFIG_PATH prisma.yml
COPY config.yml prisma.yml
COPY replace_variables.sh .
ENTRYPOINT sh replace_variables.sh && sh -c /app/start.sh
EXPOSE 4466