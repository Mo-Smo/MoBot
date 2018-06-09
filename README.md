# Stream Role Bot ![](https://gitlab.com/lolPants/stream-role-bot/badges/master/build.svg)
_Discord Bot that assigns a role when someone is streaming._  
Built by [Jack Baron](https://www.jackbaron.com)

## Setup
### Prerequisites
* Docker
* Docker Compose

### `.env` File
To configure your bot, copy `example.env` to a new file named `streambot.env` and fill it out.

Feel free to change the prefix to whatever. Usage is: `%invite`  
If you wish to use a spaced prefix (eg `% invite`) then add the line `PREFIX_SPACE=true`

### Docker
To update the bot image use `docker-compose pull`. Once the latest version of the bot has been pulled, start the service using `docker-compose up -d`.  
To access logs, use `docker-compose logs -f` (ctrl+c to exit).

## Inviting to your server
1. In the [bot settings](https://discordapp.com/developers/applications/me) on Discord's site, find your bot and copy it's **Client ID**
2. Open this URL, but replace `<CLIENTID>` with your Client ID `https://discordapp.com/oauth2/authorize?scope=bot&client_id=<CLIENTID>&permissions=336006144`
3. Follow the instructions
