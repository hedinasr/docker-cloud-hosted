# docker-cloud-hosted

## Prerequisites

- `docker` (19.03.5)
- `docker-compose` (1.25.0)

## Quick Start (local)

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

## Deployment (remote)

1. Copy the project into the virtual machine
   ```
   scp -F ssh_config -r `pwd` docker:~
   ```

2. Connect to the VM and run `docker-compose`
   ```
   ssh -F ssh_config docker
   cd docker-cloud-hosted
   docker-compose build
   docker-compose up -d
   ```
3. Add these domains to your `/etc/hosts`
   ```
   echo 192.168.78.20 {cloud,chat,blog}.hosted.local | sudo tee -a /etc/hosts
   ```
   > ! *Warning* ! You shoud delete the previous entry of your `/etc/hosts`
