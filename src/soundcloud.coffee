# Description:
#   Messing around with the soundcloud API.
#
# Commands:
#   hubot soundcloud me <query> - Searches Soundcloud for the query and returns the first track.
module.exports = (robot) ->
	clientID = process.env.HUBOT_SOUNDCLOUD_CLIENT_ID;
	soundcloudUri = "https://api.soundcloud.com/tracks"
	robot.respond /(soundcloud|sc)( me)? (.*)/i, (msg) ->
		query = msg.match[3]
		robot.http(soundcloudUri)
			.query({
				q: query,
				client_id: clientID
			})
			.get() (err, res, body) ->
				tracks = JSON.parse(body)
				msg.send(tracks[0].permalink_url);