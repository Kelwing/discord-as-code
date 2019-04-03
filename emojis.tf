resource "discord_guild_emoji" "test_emoji" {
  guild_id = "${discord_guild.dsac.id}"
  name = "doggo"
  image = "${file("images/doggo.b64")}"
}

resource "discord_guild_emoji" "terraform" {
  guild_id = "${discord_guild.dsac.id}"
  name = "terraform"
  image = "${file("images/terraform.b64")}"
}