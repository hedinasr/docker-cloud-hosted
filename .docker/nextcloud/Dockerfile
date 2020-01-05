FROM nextcloud:15.0.0-apache

ENV http_proxy  http://proxy.univ-lyon1.fr:3128
ENV https_proxy http://proxy.univ-lyon1.fr:3128

RUN apt-get update && apt-get install -y --no-install-recommends wait-for-it \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [                                                                        \
    "/bin/bash",                                                                    \
    "-c",                                                                           \
    "wait-for-it ${MYSQL_HOST}:3306 -t 120 -s -- /entrypoint.sh apache2-foreground" \
]
