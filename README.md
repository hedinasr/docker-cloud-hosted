# docker-cloud-hosted

## Prerequisites

- `docker` (19.03.5)
- `docker-compose` (1.25.0)

## Quick Start

1. Clone repository to your local machine
   ```
   git clone https://github.com/Ananasr/docker-cloud-hosted.git
   ```

2. Add `cloud.local.fr` to your `/etc/hosts`
   ```
   echo 127.0.0.1 cloud.local.fr | sudo tee -a /etc/hosts
   ```

3. Run `docker-compose`
   ```
   docker-compose up -d
   ```

4. Then open in your web-browser

   | Service       | Address                              |
   | ------------- | ------------------------------------ |
   | Nextcloud     | http://localhost:8080/               |
   | Rocket.Chat   | http://cloud.local.fr/chat           |
   | WordPress     | http://cloud.local.fr/wp             |
