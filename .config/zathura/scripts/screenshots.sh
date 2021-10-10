#!/bin/bash

copy_selection() {
  #maim -s | xclip -selection clipboard -t image/png; maim -s "$HOME/Pictures/Screenshot-$(date +%s).png"; notify-send "Screenshot taken"
  main -s "$HOME/Pictures/Screenshot-$date +%s).png"; notify-send "Screenshot taken"
}

full() {
	maim "$HOME/Pictures/Screenshot-$(date +%s).png"; notify-send "Screenshot taken"
}

save_selection() {
	maim -s "$HOME/Pictures/Screenshot-$(date +%s).png"; notify-send "Screenshot taken"
}
