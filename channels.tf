resource "discord_guild_channel" "announcements" {
  guild_id = "${discord_guild.dsac.id}"
  name = "Announcements & Info"
  permission_overwrites = [
    {
      id = "${discord_guild_role.admin.id}"
      type = "role"
      allow = 2048 // Send message perms
    },
    {
      id = "${discord_guild.dsac.id}" // Should be the @everyone role
      type = "role"
      deny = 2048
    }
  ]
  type = 4 // Category
  position = 0
}

resource "discord_guild_channel" "about" {
  guild_id = "${discord_guild.dsac.id}"
  name = "about"
  parent_id = "${discord_guild_channel.announcements.id}"
  position = 0
}

resource "discord_guild_channel" "announce" {
  guild_id = "${discord_guild.dsac.id}"
  name = "announcements"
  parent_id = "${discord_guild_channel.announcements.id}"
  position = 3
}


resource "discord_guild_channel" "general_category" {
  guild_id = "${discord_guild.dsac.id}"
  name = "General"
  type = 4 // Category
  position = 1
}

resource "discord_guild_channel" "general" {
  guild_id = "${discord_guild.dsac.id}"
  name = "general"
  parent_id = "${discord_guild_channel.general_category.id}"
  position = 1
}

resource "discord_guild_channel" "meta" {
  guild_id = "${discord_guild.dsac.id}"
  name = "meta"
  parent_id = "${discord_guild_channel.general_category.id}"
  position = 2
  topic = "Meta discussion about the server, CI/CD, terraform"
}
