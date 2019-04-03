resource "discord_message" "about" {
  channel_id = "${discord_guild_channel.about.id}"
  content = "${file("messages/about.md")}"
}
