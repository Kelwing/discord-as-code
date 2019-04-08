resource "discord_guild_member" "kelwing" {
  guild_id = "${discord_guild.dsac.id}"
  member_id = "109710323094683648"
  roles = ["${discord_guild_role.admin.id}"]
}

resource "discord_guild_member" "trophias" {
  guild_id = "${discord_guild.dsac.id}"
  member_id = "85185381837836288"
  roles = ["${discord_guild_role.moderator.id}"]
}

resource "discord_guild_member" "ryden" {
  guild_id = "${discord_guild.dsac.id}"
  member_id = "318044130796109825"
  roles = ["${discord_guild_role.admin.id}"]
}

resource "discord_guild_member" "king-vlad" {
  guild_id = "${discord_guild.dsac.id}"
  member_id = "139836912335716352"
  roles = ["${discord_guild_role.admin.id}"]
}
