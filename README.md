# Minecraft Server

Welcome! This project provides a simple way to run your own Minecraft server using Docker. With a few commands, you and your friends can start playing together easily.

> **Note:** The commands in the Makefile are written for Windows users by default.
> If you are on Linux or macOS, you can comment out the Windows commands and uncomment the Unix versions provided at the bottom of the Makefile.
> This project was originally made with Windows in mind, but you can easily adapt it for Unix systems!

## Requirements

Before you start, make sure you have the following installed:

- **Docker**: To run the Minecraft server in a container.
  [Get Docker](https://www.docker.com/get-started/)
- **Ngrok account**: To expose your server to the internet.
  [Sign up for Ngrok](https://ngrok.com/)
- **Ngrok CLI**: To create a public tunnel for your server.
  [Download Ngrok](https://ngrok.com/download)

## Available Commands

- `make start` – Start the Minecraft server.
- `make down` – Stop the server.
- `make restart` – Restart the server.
- `make build` – Rebuild the server files.
- `make console` – Access the Minecraft server console.
- `make deploy` – Get a free public domain with Ngrok.
- `make list` – Show all available Makefile commands.

## How to Configure Your Minecraft Server

- **Server properties:**
  [Minecraft Server.properties documentation](https://minecraft.wiki/w/Server.properties)
- **Download Minecraft Server JAR:**
  [Official Minecraft Server Download](https://www.minecraft.net/en-us/download/server)
- **Java Edition Server Setup Guide:**
  [Tutorial](https://minecraft.wiki/w/Tutorial:Setting_up_a_Java_Edition_server)
- **Video Tutorial:**
  [YouTube Guide](https://www.youtube.com/watch?v=sz6kqZPVsfM)

## Connection Details

To make your server accessible to everyone, we use Ngrok:

**Steps:**
1. Download and log in to Ngrok.
2. Run `ngrok tcp 25565` or use `make deploy` to start the tunnel.
3. Ngrok will provide you with a public address like `tcp://0.tcp.ngrok.io:12345`.

Share this address with your friends so they can join your server!

> You can use a different service instead of Ngrok if you prefer. Feel free to customize this setup as you like 😊

## .env

You can use a `.env` file to set environment variables for your server.
Here’s an example:

```properties
# .env example
RCON_PASSWORD=your_secure_password
```

Replace your_secure_password with a strong password of your choice.
