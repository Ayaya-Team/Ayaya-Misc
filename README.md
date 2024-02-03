# Ayaya-Misc

Repository that holds sample configurations and the gifs of the action commands of [Ayaya discord bot](https://github.com/Ayaya-Team/Ayaya-Bot/tree/master).
You need at least the configurations if you want to run your own instance of the bot.

Under the [Configs](https://github.com/Ayaya-Team/Ayaya-Misc/tree/main/Configs) folder you can find the needed configuration templates for the bot:
- The config.json file provides the more basic configurations. You must provide the id of the bot account, the token, the database connection url, user and password and a list of ids from users you trust with instance owner permissions. The database url for a local PostgreSQL database should look like `jdbc:postgresql://localhost/db_name`.
- The ayaya.sql file is a complete example dump of a PostgreSQL database. This can be imported to any PostgreSQL database with UTF-8 encoding that is owned by a `ayaya` user. Note that this database is also meant to store all the custom regional indicator emotes.

Under the [Emotes](https://github.com/Ayaya-Team/Ayaya-Misc/tree/main/Emotes) folder you can find all the emotes used by the original instance of the bot. Note that if you want to use them, you need to add them to a server or possibly split them between multiple servers the bot has access to.

Under the [Gifs](https://github.com/Ayaya-Team/Ayaya-Misc/tree/main/Gifs) folder you can find all the gifs used by the bot. The way the bot works requires these gifs to be hosted somewhere where they can be accessed through a url.

Current issues:
- While the ayaya.sql dump already includes urls to discord attachments for the gifs, some of these urls may not work at this point in time. I may explore the possibility of using the urls of the images in this repo as a more permanent solution.
- As already mentioned in [here](https://github.com/Ayaya-Team/Ayaya-Bot/tree/master), the database dump is from a PostgreSQL database and it may require you to perform extra steps in case you want to use another database management system.

###### Short FAQ:

Q: Can I use the emotes originally used by the public instance of this bot?
A: Yes, you just need to set them up for your personal use. First add them to a server the bot can access, you might have to split them between multiple servers since there are a lot of emotes. Then write each emote in a text channel in the format `\:EmoteName:` to get their snowflake string. Finally, you can update the sql database for regional indicator emotes or change the strings in the file [Emotes.java](https://github.com/Ayaya-Team/Ayaya-Bot/tree/master/src/main/java/ayaya/core/Emotes.java) for other emotes.

Q: Why didn't you just make the bot read the gifs directly from the local file system?  
A: At the time I did not figure out how to do that. I don't know yet if I will work on that.

Q: What is necessary to use the database dump with another database management system?  
A: It depends on what you will use. You should do your research for this one.

Q: Why does the donation url in the config.json not work?  
A: I unpublished my Patreon page after I shut down the public instance. I may remove the url from the configuration template and its usage in the source code in the future.
