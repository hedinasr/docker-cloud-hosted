FROM wordpress:5.3.2-apache

RUN apt-get update && apt-get install -y --no-install-recommends wait-for-it \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [                                                                       \
    "/bin/bash",                                                                   \
    "-c",                                                                          \
    "wait-for-it ${MYSQL_HOST}:3306 -t 60 -s -- docker-entrypoint.sh apache2-foreground" \
]
