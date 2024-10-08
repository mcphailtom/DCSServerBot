��    M      �  g   �      �  6   �     �     �     �  	         8   #  $  \  �   �
  �   2  [  �  Y   "     |     �     �     �  #   �  (   �     "     @  1   _     �     �  9   �  &     #   (  2   L  C     @   �  1     .   6  *   e     �  *   �     �     �      �  ,        L  2   R  <   �  3   �  4   �  R   +  Y   ~  M   �  <   &  3   c  &   �  �   �  c   a  ?   �  #     4   )  �   ^  )     (   7  B   `  0   �  G   �  ?     [   \  Q   �  8   
  /   C  U   s  S   �  0     6   N  [   �  )   �  f     6   r  "   �  B   �  
          @   �     �     �          %     1  .   2  �  a  �   O  �   �  1  �   U   �!     "     /"     J"     b"  !   n"  )   �"     �"  +   �"  /   #     3#     O#  ?   b#     �#     �#  6   �#  >   $  9   P$  *   �$  -   �$  *   �$     %  %   "%     H%     V%  $   k%  3   �%     �%  *   �%  1   �%  +   (&      T&  <   u&  ]   �&  R   '  6   c'  /   �'     �'  �   �'  _   ~(  -   �(     )  -   ")  �   P)     �)  0   *  U   B*  A   �*  Z   �*  >   5+  Q   t+  I   �+  6   ,  .   G,  G   v,  9   �,  #   �,  <   -  M   Y-  &   �-  m   �-  2   <.     o.  @   �.     �.         )   ?       $   F   &         #       1   9           :   H      ;       "   >   4   E      2      
                       ,      <           I   G   0   '             7       (       =   *   !      %           C       K   B                                                        6   .   3   5       D      -   8             @   L   M   +              /   	   J           A    

All set. Writing / updating your config files now... 
1. [u]General Setup[/] 
2. [u]Bot Setup[/] 
2. [u]Discord Setup[/] 
Aborted. 
For a successful installation, you need to fulfill the following prerequisites:

    1. Installation of PostgreSQL from https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
    2. A Discord TOKEN for your bot from https://discord.com/developers/applications

 
Please provide a channel ID for audit events (optional) 
The Status Channel should be readable by everyone and only writable by the bot.
The Chat Channel should be readable and writable by everyone.
The Admin channel - central or not - should only be readable and writable by Admin and DCS Admin users.

You can create these channels now, as I will ask for the IDs in a bit.
DCSServerBot needs the following permissions on them to work:

    - View Channel
    - Send Messages
    - Read Messages
    - Read Message History
    - Add Reactions
    - Attach Files
    - Embed Links
    - Manage Messages

 
The bot can either use a dedicated admin channel for each server or a central admin channel for all servers.
If you want to use a central one, please provide the ID (optional) 
We now need to setup your Discord roles and channels.
DCSServerBot creates a role mapping for your bot users. It has the following internal roles: 
[green]Your basic DCSServerBot configuration is finished.[/]

You can now review the created configuration files below your config folder of your DCSServerBot-installation.
There is much more to explore and to configure, so please don't forget to have a look at the documentation!

You can start DCSServerBot with:

    [bright_black]run.cmd[/]

 
[i]DCS server "{}" found.[/i]
Would you like to manage this server through DCSServerBot? 
{}. [u]DCS Server Setup[/] 
{}. [u]Database Setup[/] 
{}. [u]Node Setup[/] - Created {} Aborted: No DCS installation found. Aborted: No valid Database URL provided. Aborted: configuration exists Aborted: missing requirements. Adding instance {instance} with server {name} ... DCS-SRS installation path: {} DCS-SRS not configured. DCSServerBot uses up to {} channels per supported server: Directory not found. Please try again. Do you remember the password of {}? Do you want DCSServerBot to autostart this server? Do you want to run DCSServerBot with Discord support (recommended)? Do you want your DCS installation being auto-updated by the bot? Do you want your DCSServerBot being auto-updated? Enter the hostname of your PostgreSQL-database Enter the port to your PostgreSQL-database For admin commands. Have you fulfilled all these requirements? Installation finished. Instance {} configured. No configured DCS servers found. Normal user, can pull statistics, ATIS, etc. Other Please enter the ID of your [bold]Admin Channel[/] Please enter the ID of your [bold]Chat Channel[/] (optional) Please enter the ID of your [bold]Status Channel[/] Please enter the path to your DCS World installation Please enter the path to your DCS-SRS installation.
Press ENTER, if there is none. Please enter your Discord Guild ID (right click on your Discord server, "Copy Server ID") Please enter your Owner ID (right click on your discord user, "Copy User ID") Please enter your PostgreSQL master password (user=postgres) Please enter your discord TOKEN (see documentation) Please enter your password for user {} Please separate roles by comma, if you want to provide more than one.
You can keep the defaults, if unsure and create the respective roles in your Discord server. Please specify, which installation you want the bot to use.
Chose "Other", if it is not in the list SRS configuration could not be created, manual setup necessary. Searching for DCS installations ... Searching for existing DCS server configurations ... The bot can be set to the same language, which means, that all Discord and in-game messages will be in your language as well. Would you like me to configure the bot this way? To display the mission and player status. Users can delete data and change the bot Users can delete data, change the bot, run commands on your server Users can restart missions, kick/ban users, etc. Users can upload missions, start/stop DCS servers, kick/ban users, etc. Which role(s) in your discord should hold the [bold]{}[/] role? Which user(s) should get the [bold]{}[/] role?
Please enter a comma-separated list of UCIDs You now need to setup your users.
DCSServerBot uses the following internal roles: [bright_black]Optional:[/]: An in-game chat replication. [green]- Database user and database created.[/] [i]You can skip the Discord TOKEN, if you decide to do a non-Discord-installation.[/] [red]A configuration for this nodes exists already![/]
Do you want to overwrite it? [red]Master password wrong. Please try again.[/] [red]No PostgreSQL-database found on {host}:{port}![/] [red]SRS configuration could not be created.
Please copy your server.cfg to {} manually.[/] [red]Wrong password! Try again ({}/3).[/] [red]You need to give DCSServerBot write permissions on {} to desanitize your MissionScripting.lua![/] [yellow]Configuration found, adding another node...[/] [yellow]Existing {} user found![/] [yellow]You have entered 3x a wrong password. I have reset it.[/]' {} written Project-Id-Version: 1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: cn
 

全部设置完毕. 现在写入 / 更新您的配置文件... 
1. [u]常规设置[/] 
2. [u]机器人设置[/] 
2. [u]Discord 设置[/] 
已中止. 
为了成功安装，您需要满足以下先决条件:

    1. 安装 PostgreSQL 数据库 https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
    2. 获取给 Server Bot 用的 Discord TOKEN https://discord.com/developers/applications

 
请提供审计事件的渠道 ID（可选） 
状态通道应可供所有人读取，但只能由机器人写入.
聊天频道应该对每个人都具有可读写权限.
管理通道（无论是否中央）只能由管理员和 DCS 管理员用户读取和写入.

你现在可以创建这些频道，稍后我会要求你提供 ID.
DCSServerBot 需要以下权限才能运行:

    - 查看频道
    - 发送消息
    - 读取消息
    - 读取历史消息
    - 添加反应
    - 附加文件
    - 嵌入链接
    - 管理消息

 
机器人可以为每个服务器使用专用的管理频道，也可以为所有服务器使用中央管理频道.
如需使用中央账户，请提供 ID（可选） 
我们现在需要设置您的 Discord 角色和频道.
DCSServerBot 为您的机器人用户创建角色映射。它具有以下内部角色: 
[green]您的基本 DCSServerBot 配置已完成.[/]

您现在可以在 DCSServerBot安装目录的config文件夹下查看创建的配置文件.
还有更多内容需要探索和配置，所以请不要忘记查看文档!

你可以使用以下命令启动 DCSServerBot:

    [bright_black]run.cmd[/]

 
[i]DCS 服务器 "{}" 已找到.[/]
您想通过 DCSServerBot 管理此服务器吗? 
{}. [u]DCS 服务器设置[/] 
{}. [u]数据库设置[/] 
{}. [u]节点设置[/] - 创建 {} 已中止：未找到 DCS 安装. 中止：未提供有效的数据库 URL. 已中止：配置已存在. 已中止：您需要先满足所有要求. 添加实例 {instance} 和服务器 {name} ... DCS-SRS 安装路径：: {} DCS-SRS 未配置. DCSServerBot 每个支持的服务器最多使用 {} 个通道: 未找到目录。请重试. 您记得 {} 的密码吗? 您是否希望 DCSServerBot 自动启动该服务器? 您是否想运行支持 Discord 的 DCSServerBot（推荐）? 您是否希望您的 DCS 安装由机器人自动更新? 您是否希望 DCSServerBot 自动更新? 输入你的 PostgreSQL 数据库的主机名 输入你的 PostgreSQL 数据库的端口 对于管理命令. 您是否满足了所有这些要求? 安装完成. 实例 {} 已配置. 未找到已配置的 DCS 服务器. 普通用户，可以提取统计数据、ATIS 等. 其他 请输入您的 [bold]管理频道的ID[/] 请输入您的 [bold] 聊天频道ID[/] (可选) 请输入您的 [bold] 状态频道的ID[/] 请输入 DCS World 安装路径 请输入 DCS-SRS 安装路径.
如果没有，请按 ENTER. 请输入您的 Discord Guild ID (右键单击您的 Discord 服务器, "复制服务器 ID") 请输入您的所有者 ID (右键单击您的 discord 用户, "复制用户 ID") 请输入您的 PostgreSQL 主密码 (用户=postgres) 请输入您的 discord TOKEN（查看文档） 请输入用户 {} 的密码 如果您想提供多个角色，请用逗号分隔.
如果不确定，你可以保留默认设置，并在 Discord 服务器中创建相应的角色. 请指定您希望机器人使用哪个进行安装.
如果不在列表中，请选择 "其他" 无法创建 SRS 配置，需要手动设置. 搜索 DCS 安装 ... 正在搜索现有的 DCS 服务器配置 ... 可以将机器人设置为相同的语言，这意味着所有 Discord 和游戏内消息也将使用您的语言。您希望我以这种方式配置机器人吗? 显示任务和玩家状态. Admin 用户可以删除数据并更改机器人 Admin 用户可以删除数据、更改机器人、在你的服务器上运行命令. DCS Admin用户可以重新开始任务、踢出/禁止用户等. DCS Admin 用户可以上传任务、启动/停止 DCS 服务器、踢出/禁止用户等. 您的 discord 中的哪些角色应担任 [bold]{}[/] 角色? 哪些用户应获得 [bold]{}[/] 角色?
请输入以逗号分隔的 UCID 列表 您现在需要设置您的用户.
DCSServerBot 使用以下内部角色: [bright_black]可选:[/]: 游戏内聊天同步频道. [green]- 创建数据库用户和数据库.[/] [i]如果你决定不安装 Discord，则可以跳过 Discord TOKEN.[/] [red]此节点的配置已存在!![/]
是否要覆盖它? [red]主密码错误. 请重试.[/] [red]在 {host}:{port} 上未找到 PostgreSQL 数据库![/] [red]无法创建 SRS 配置.
请手动将您的 server.cfg 复制到 {} .[/] [red]密码错误!请重试 ({}/3).[/] [red]您需要授予 DCSServerBot 对 {} 的写入权限才能对您的 MissionScripting.lua 进行消毒![/] [yellow]找到配置，添加另一个节点...[/] [yellow]已找到用户 {} ![/] [yellow]您输入了 3 次错误密码。我已重置密码.[/]' {} 已写入 