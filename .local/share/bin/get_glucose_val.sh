#!/bin/bash

source /home/marcman/.local/share/bin/venv/bin/activate
val=$(python /home/marcman/.local/share/bin/glucose.py)
low=70
high=240

if [ "$val" -le "$low" ]; then
	class="low"
elif [ "$val" -le "$high" ]; then
	class="normal"
else
	class="high"
fi

jq -n -c --arg text "$val" --argjson class "[\"$class\"]" \
  '{text: $text, class: $class}'
