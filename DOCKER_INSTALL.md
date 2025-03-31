# Installing Docker

This is a short guide to get docker up and running on an Ubuntu Linux system.

## Official Docs

https://docs.docker.com/desktop/setup/install/linux/ubuntu/

https://docs.docker.com/engine/install/linux-postinstall/

## Commands

These may be out of date, if something doesn't work, refer to official docs and update this guide as needed.

```bash
# Add Docker Repo
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

```bash
# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

```bash
# Run without sudo
sudo groupadd docker

sudo usermod -aG docker $USER

# log out and log back in then run the following
# to validate that everything works.
docker run hello-world

```
