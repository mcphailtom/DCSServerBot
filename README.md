# Documentation
DCSServerBot lets you interact between Discord and DCS.
The bot has to be installed on the same machine that runs DCS or at least in the same network.
The following two main features are supported:

## DCS Server Remote Control
Control registered DCS servers via Discord commands.
The following commands are supported:
Command|Parameter|Channel|Role|Description
-------|-----------|-------|-------|---------
.servers||all|DCS|Lists all registered DCS servers and their status (same as .mission but for all). Servers will auto-register on startup.
.mission||status-/admin-channel|DCS Admin|Information about the active mission. Persistent display in status-channel.
.briefing/.brief||status-/chat-/admin-channel|DCS|Shows the description / briefing of the running mission.
.players||status-/admin-channel|DCS Admin|Lists the players currently active on the server. Persistent display in status-channel.
.list||admin-channel|DCS Admin|Lists all missions with IDs available on this server (same as WebGUI).
.add|[miz-file]|admin-channel|DCS Admin|Adds a specific mission to the list of missions, that has to be in Saved Games/DCS[.OpenBeta]/Missions. If no miz file is provided, a list of all available files in the servers Missions directory will be provided.
.delete|ID|admin-channel|DCS Admin|Deletes the mission with this ID from the list of missions.
.start / .load|ID|admin-channel|DCS Admin|Starts a specific mission by ID.
.restart|[time in secs] [message]|admin-channel|DCS Admin|Restarts the current mission after [time] seconds. A message will be sent into the ingame chat of that server.
.pause||admin-channel|DCS Admin|Pauses the current running mission.
.unpause||admin-channel|DCS Admin|Resumes the current running mission.
.chat|message|chat-/admin-channel|DCS|Send a message to the DCS ingame-chat.
.ban|@member or ucid|all|Admin/Moderator|Bans a specific player either by his Discord ID or his UCID
.unban|@member or ucid|all|Admin/Moderator|Unbans a specific player either by his Discord ID or his UCID
.bans||all|Admin/Moderator|Lists the current bans.
.unregister||all|Admin|Unregisters the current server from this agent. Needed, if the very same server is going to be started on another machine connected to another agent.
.rename|newname|admin-channel|Admin|Renames a DCS server. Server has to be shut down for the command to work.
.password||admin-channel|Admin|Changes the password of a DCS server.
.startup||admin-channel|Admin|Starts a dedicated DCS server instance (has to be registered, so it has to be started once outside of Discord).
.shutdown||admin-channel|Admin|Shuts the dedicated DCS server down.
.update||admin-channel|Admin|Updates DCS World to the latest available version.

## User Statistics
Gather statistics data from users and display them in a user-friendly way in your Discord.
The following commands are supported:
Command|Parameter|Role|Description
-------|-----------|---------|----------
.link|@member or ucid|Admin/Moderator|Sometimes users can't be linked automatically. That is a manual workaround.
.statistics/.stats|[@member]|DCS|Display your own statistics or that of a specific member.
.highscore/.hs|[day] / [week] / [month]|DCS|Shows the players with the most playtime or most kills in specific areas (CAP/CAS/SEAD/Anti-Ship)
.serverstats|[week] / [month]|Admin/Moderator|Displays server statistics, like usual playtimes, most frequented servers and missions

## Installation
First of all, download the latest release version and extract it somewhere on your server, where it has write access.
Make sure that this directory can only be seen by yourself and is not exposed to anybody outside via www etc.

### Prerequisites
You need to have [python 3.8](https://www.python.org/downloads/) or higher and [PostgreSQL](https://www.postgresql.org/download/) installed.
The python modules needed are listed in requirements.txt and can be installed with ```pip3 install -r requirements.txt```.
If using PostgreSQL remotely over unsecured networks, it is recommended to have SSL enabled.
For autoupdate to work, you have to install [GIT](https://git-scm.com/download/win) and make sure, ```git``` is in your PATH.

### Discord Token
The bot needs a unique Token per installation. This one can be obtained at http://discord.com/developers.
Create a "New Application", add a Bot, select Bot from the left menu, give it a nice name and icon, press "Copy" below "Click to Reveal Token".
Now your Token is in your clipboard. Paste it in dcsserverbot.ini in your config-directory.
Both "Priviledged Gateway Intents" have to be enabled on that page.
To add the bot to your Discord guild, go to OAuth2, select "bot" in the OAuth2 URL Generator, select the following permissions:
_Send Messages, Manage Messages, Embed Links, Attach Files, Read Message History, Add Reactions_
Press "Copy" on the generated URL, paste it into the browser of your choice, select the guild the bot has to be added to - and you're done!
For easier access to channel IDs, enable "Developer Mode" in "Advanced Settings" in Discord.

### Bot Configuration
The bot configuration is held in config/dcsserverbot.ini. The following parameters can be used to configure the bot:
Parameter|Description
-----------|--------------
OWNER|The Discord ID of the Bot's owner (that's you!). If you don't know your ID, go to your Discord profile, make sure "Developer Mode" is enabled under "Advanced", go to "My Account", press the "..." besides your profile picture and select "Copy ID"
TOKEN|The token to be used to run the bot. Can be obtained at http://discord.com/developers.
DATABASE_URL|URL to the PostgreSQL database used to store our data.
COMMAND_PREFIX|The prefix to be used. Default is '.'
HOST|IP the bot listens on for messages from DCS. Default is 127.0.0.1, to only accept internal communication on that machine.
PORT|UDP port, the bot listens on for messages from DCS. Default is 10081. **__Don't expose that port to the outside world!__**
MASTER|If true, start the bot in master-mode which enables specific commands that are only allowed **once** on your server. If only one bot is running, then there is only a master.\nIf you have to use more than one bot, for multiple DCS servers that are spanned over several locations, you have to install one agent at every location. All DCS servers of that specific location will then automatically register with that specific bot and can only be controlled by that bot.
AUTOUPDATE|If true, the bot autoupdates itself with the latest release on startup.
AUTOBAN|If true, members leaving the discord will be automatically banned.
SERVER_FILTER|Filter to shorten server names (if needed)
MISSION_FILTER|Filter to shorten mission names (if needed)
DCS_HOME|The main configuration directory of your DCS server installation (for Hook installation). Keep it empty, if you like to place the Hook by yourself.
DCS_INSTALLATION|The installation directory of DCS World.
GREETING_MESSAGE_MEMBERS|A greeting message, that people will receive in DCS, if they get recognized by the bot as a member of your discord.
GREETING_MESSAGE_UNKNOWN|A greeting message, that people will receive in DCS, if they or not recognized as a member of your discord.

### DCS/Hook Configuration
The DCS World integration is done via a Hook. This is being installed automatically.
You need to configure the Hook upfront in Scripts/net/DCSServerBot/DCSServerBotConfig.lua
Parameter|Description
-----------|--------------
..BOT_HOST|Must be the same as HOST in the Bot configuration.
..BOT_PORT|Must be the same as PORT in the Bot configuration (default 10081).
..STATISTICS|If false, no statistics will be generated for this server. Default is true.
..SERVER_USER|The username to display as user no. 1 in the server (Observer)
..DCS_HOST|The IP of the machine, DCS is running onto. If you are an agent to a master in the same network but not on your machine, this has to be the internal IP of the DCS server.
..DCS_PORT|Must be a unique value > 1024 of a port that is not in use on your system. Must be unique for every DCS server instance configured. **__Don't expose that port to the outside world!__**
..CHAT_CHANNEL|The ID of the in-game chat channel to be used for the specific DCS server. Must be unique for every DCS server instance configured. If "-1", no chat messages will be generated.
..STATUS_CHANNEL|The ID of the status-display channel to be used for the specific DCS server. Must be unique for every DCS server instance configured.
..ADMIN_CHANNEL|The ID of the admin-commands channel to be used for the specific DCS server. Must be unique for every DCS server instance configured.

### Sanitization
The DCSServerBot uses lua functions that are santitized by default. To enable them, you have to change the following lines in DCS_INSTALLATION\\Scripts\\MissionScripting.lua:
```lua
      sanitizeModule('os')
  -- >>> THESE LINES HAVE TO BE COMMENTED <<<
  --  sanitizeModule('io')
  --  sanitizeModule('lfs')
  --  require = nil
  -- <<< THESE LINES HAVE TO BE COMMENTED >>>
      loadlib = nil
```
If you are using Slmod, you can change these lines in Saved Games\\DCS[.openbeta]\\Scripts\\net\\Slmodv7_5\\SlmodMissionScripting.lua. That has the advantage that the file gets replaced on every server start and overwrites and replacement that might come with a DCS update.
If you run more than one instance of DCS, don't forget to change SlmodMissionScripting.lua **in all instances**, as they would overwrite each other otherwise.

### Discord Configuration
The following roles have to be set up in your Discord guild:
Role|Description
-------|-----------
DCS|People with this role are allowed to chat, check their statistics and gather information about running missions and players.
DCS Admin|People with this role are allowed to restart missions and managing the mission list.
Admin / Moderator|People with one of these roles are allowed to manage the server, to ban/unban people and to link discord-IDs to ucids, when the autodetection didn't work

### **!!! ATTENTION !!!**
_One of the concepts of this bot it to bind people to your discord._

The bot automatically bans / unbans people from the configured DCS servers, as soon as they leave / join the configured Discord guild.
If you don't like that feature, set AUTOBAN = false in dcsserverbot.ini.

## How to do the more complex stuff?
DCSServerBot can be used to run a whole worldwide distributed set of DCS servers and therefore supports the largest communities.
The installation and maintenance of such a use-case is a bit more complex than a single server installation.

### Setup Multiple Servers on a Single Host
DCSServerBot is able to contact DCS servers at the same machine or over the local network. So it is sufficient to configure a single DCSServerBot per location.
To run multiple DCS servers under control of DCSServerBot you just have to make sure that you configure different communication ports. This can be done with the parameter DCS_PORT in DCSServerBotConfig.lua. The default is 6666, you can just increase that for every server (6667, 6668, ...).
Unfortunately, the files in Scripts/Hook and Scripts/net are only copied to the first instance atm. That said, you need to copy these files over by hand to the 2nd instance and change the configuration accordingly. Don't forget to configure different Discord channels (CHAT_CHANNEL, STATUS_CHANNEL and ADMIN_CHANNEL) for the secondary server, too.
To add subsequent servers, just follow the steps above and you're good unless they are on a different Windows server.

### Setup Multiple Servers on Multiple Host at the Same Location
To communicate with DCSServerBot over the network, you need to change two configurations.
By default, DCSServerBot is configured to be bound to the loopback interface (127.0.0.1) not allowing any external connection to the system. This can be changed in dcsserverbot.ini by using the LAN IP address of the Windows server running DCSServerBot instead. All DCS servers then have to be configured to use that IP address, too. This can be done by changing BOT_HOST in the dedicated DCSServerBotConfig.lua files of the DCS servers to the very same LAN IP address of the Windows server running the DCSSServerBot.

### Setup Multiple Servers on Multiple Host at Different Locations
DCSServerBot is able to run in multiple locations, worldwide. In every location, one instance of DCSServerBot is needed to be installed in the local network containing the DCS servers.
Only one single instance of the bot is to be configured as a master. This instance has to be up 24/7. Currently, DCSServerBot does not support handing over the master to other bot instances.
To configure a server as a master, you have to set MASTER to true (default) in the dcsserverbot.ini configuration file. Every other instance of the bot has to be set as an agent (MASTER = false).
The master and all agents are collecting statistics of the DCS servers they control, but only the master runs the statistics module to display them in Discord. To be able to write the statistics to the **central** database, all servers need access. You can either host that database at the location where the master runs and enable all other agents to access that instance (keep security like SSL encryption in mind) or you use a cloud database, available on services like Amazon, Heroku, etc.

### Moving a Server from one Location to Another
When running multiple servers over different locations it might be necessary to move a server from one location to another. As all servers are registered with their local bots, some steps are needed to move a server over.
1) Stop the server in the **old** location from where it should be moved.
2) Goto the ADMIN_CHANNEL of that server and type ```.unregister```
3) Configure a server at the **new** location with the very same name and make sure the the correct channels are configured in DCSServerBotConfig.lua of that server.
4) Start the server at the **new** location.

### How to talk to the Bot from inside Missions
If you plan to create Bot-events from inside a DCS mission, that is possible! Just make sure, you include this line in a mission start trigger:
```lua
  dofile(lfs.writedir() .. 'Scripts/net/DCSServerBot/DCSServerBot.lua')
```
After that, you can for instance send chat messages to the bot using
```lua
  dcsbot.sendBotMessage('Hello World', '12345678') -- 12345678 is the ID of the channel, the message should appear
```

## TODO
Things to be added in the future:
* user-friendly installation
* Make discord roles configurable
* Own sanitization implementation

## Credits
Thanks to the developers of the awesome solutions [HypeMan](https://github.com/robscallsign/HypeMan) and [perun](https://github.com/szporwolik/perun), that gave me the main ideas to this solution.
I gave my best to mark parts in the code to show where I copied some ideas or even code from you guys. Hope that is ok.
Both frameworks are much more comprehensive than what I did here, so you better check those out before you look at my simple solution.
