# docker-cloud-hosted

## Prerequisites

- `docker` (19.03.5)
- `docker-compose` (1.25.0)

## Quick Start

1. Clone repository to your local machine
   ```
   git clone https://github.com/Ananasr/docker-cloud-hosted.git
   ```

2. Add these domains to your `/etc/hosts`
   ```
   echo 127.0.0.1 {cloud,chat,blog}.hosted.local | sudo tee -a /etc/hosts
   ```

3. Run `docker-compose`
   ```
   docker-compose up -d
   ```

4. Then open in your web-browser

   | Service       | Address                              |
   | ------------- | ------------------------------------ |
   | Nextcloud     | http://cloud.hosted.local/           |
   | Rocket.Chat   | http://chat.hosted.local/            |
   | WordPress     | http://blog.hosted.local/            |
