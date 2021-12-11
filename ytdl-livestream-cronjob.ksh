#!/usr/local/bin/oksh

# Set interval duration in seconds.
secs=32400

# Reset $SECONDS; counting of seconds will (re)start from 0(-ish).
SECONDS=0

# Check if there's a running instance of youtube-dl
RUN=`pgrep youtube-dl`
if [[ $RUN -gt 0 ]]; then
	echo "some instance of youtube-dl is already running"
	exit
fi

# Loop until interval has elapsed.
while (( SECONDS < secs )); do 
	youtube-dl --no-part *add-url-here* ;
	sleep 60
  done
