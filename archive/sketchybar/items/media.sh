#!/bin/bash

sketchybar --add item media left \
           --set media label.color=$FONT_COLOR \
                       label.max_chars=75 \
                       icon.padding_left=10 \
                       scroll_texts=on \
                       icon=􀑪             \
                       icon.color=$ACCENT_COLOR   \
                       background.drawing=on \
                       background.color=$ITEM_BG_COLOR \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
