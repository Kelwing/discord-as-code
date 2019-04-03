resource "discord_guild" "dsac" {
  name = "Discord as Code"
  region = "us-central"
  icon = "${file("terraform.b64")}"
}

resource "discord_channel_invite" "test_invite" {
  channel_id = "${discord_guild_channel.about.id}"
  unique = true
  max_users = 0
  max_age = 0
}

output "invite" {
  value = "${discord_channel_invite.test_invite.code}"
}