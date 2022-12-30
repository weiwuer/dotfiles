#!/bin/bash
vol=$(pulsemixer --get-volume | awk '{print $2}')
vol_state=$(pulsemixer --get-mute)

case "$vol_state" in
	1) printf "[X]" ;;
	*)
		if [[ "$vol" -lt 25 ]]; then
			printf "%s%%" "$vol"
		elif [[ "$vol" -lt 50 ]]; then
			printf "%s%%" "$vol"
		else
			printf "%s%%" "$vol"
		fi
	;;
esac
