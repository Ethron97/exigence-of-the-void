# With data exigence:temp, set $score and $display_name and $color and id (deck id)

# DEBUG
#$say $(id) $(color) $(card_name) $(display_name) $(times_processed) $(times_played) $(score)

# If times PLAYED is > 1, then show how many has been played. This is to cover Recycle cases where you only
#   had one card to start, but now you're replaying

# Set to scoreboard, number = place in order when played
$scoreboard players set $(times_played)$(card_name) CardsPlayed $(score)

## DISPLAY/COLOR
# Use Display mechanic rather than team for color
$execute if score $(times_can_played) number matches 2.. run scoreboard players display name $(times_played)$(card_name) CardsPlayed \
[{text:"$(instant)",color:"white"},{text:"$(recycled)",color:"green"},{text:"$(spellsling)",color:"dark_purple"},{text:"$(display_name) ",color:"$(color)"},{text:"($(times_played)/$(times_can_played))",color:"gray"}]

$execute if score $(times_can_played) number matches 1 run scoreboard players display name $(times_played)$(card_name) CardsPlayed \
[{text:"$(instant)",color:"white"},{text:"$(recycled)",color:"green"},{text:"$(spellsling)",color:"dark_purple"},{text:"$(display_name)",color:"$(color)"}]
