resource "discord_guild" "dsac" {
  name = "Discord as Code"
  region = "us-central"
  icon = "${file("images/terraform.b64")}"
  default_message_notifications = 1
  explicit_content_filter = 1
  verification_level = 2
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