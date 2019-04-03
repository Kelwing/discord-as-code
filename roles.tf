resource "discord_guild_role" "admin" {
  guild_id = "${discord_guild.dsac.id}"
  name = "Council"
  hoist = true
  color = 0x4286f4
}

resource "discord_guild_role" "moderator" {
  guild_id = "${discord_guild.dsac.id}"
  name = "Moderators"
  hoist = true
  color = 0x42f442
  permissions = 230695046 // 0x2 | 0x4 | 0x4000000 | 0x8000000 | 0x80 | 0x2000 | 0x400000 | 0x800000 | 0x1000000
}