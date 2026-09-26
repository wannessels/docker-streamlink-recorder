#!/bin/bash

IFS=';' read -r -a args <<< "$streamOptions"

while true; do
	Date=$(date +%Y%m%d-%H%M%S)
	streamlink "${args[@]}" "$streamLink" "$streamQuality" -o /home/download/"$streamName"-"$Date".mkv
	sleep "${retryInterval:-60}"
done
