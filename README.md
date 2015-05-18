# hubot-soundcloud

This is a [Hubot](http://hubot.github.com/) script that uses the Soundcloud API to search for a track name and returns the (first) most relevant result.

## Getting Started

### Installation

In hubot project repo, run:

`npm install hubot-soundcloud --save`

Then add **hubot-soundcloud** to your `external-scripts.json`:

```json
["hubot-soundcloud"]
```

### Configuration

A soundcloud Client ID is required to use this script. Fetch one from the [Soundcloud for Developers](https://developers.soundcloud.com/docs/api/guide#search) page. Once acquired, an environmental variable `HUBOT_SOUNDCLOUD_CLIENT_ID` must be set with your Client ID. For Heroku deployments, this can be acheived by

`% heroku config:add HUBOT_SOUNDCLOUD_CLIENT_ID`=xxxxxxxxxxxx`