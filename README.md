# docker-streamlink-recorder

Records a Twitch stream with [streamlink](https://github.com/streamlink/streamlink) whenever it is live. Forked from [lauwarm/docker-streamlink-recorder](https://github.com/lauwarm/docker-streamlink-recorder) and trimmed to Twitch only.

## Usage

```bash
docker run --user 1000:1000 -v /path/to/vods:/home/download \
  -e streamLink='twitch.tv/twitch' -e streamQuality='best' -e streamName='twitch' \
  -e streamOptions='--twitch-api-header=Authorization=OAuth abcdefg123456;--hls-live-restart' \
  -e retryInterval='20' \
  <image>
```

## Environment

`streamLink` - the url of the stream to record.

`streamQuality` - streamlink quality (best, worst, 720p60, ...).

`streamName` - file name prefix.

`streamOptions` - streamlink flags, separated by `;`.

`retryInterval` - seconds to wait before checking again after streamlink exits (default 60).

Recordings are saved to `/home/download/<streamName>-<YYYYMMDD-HHMMSS>.mkv`. Run the container as the user that should own them (`--user` / compose `user:`).
