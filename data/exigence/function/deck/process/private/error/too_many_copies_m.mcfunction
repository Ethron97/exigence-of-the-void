# called by analyze_card

## INPUT
#   STR display_name
#   STR rarity_color
#   SCORE #relay_to_room_id Temp

#====================================================================================================

data modify storage exigence:hub too_many_copies set value true
scoreboard players add errors deck.analysis 1

# Announce to all players in the room_id that this originated
$execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #relay_to_room_id Temp run \
tellraw @s [{text:"✖ Deck Error: Found more than 3 copies of ",color:"red"},{text:"$(display_name)",color:"$(rarity_color)",bold:false},{text:"",color:"red",bold:false}]
