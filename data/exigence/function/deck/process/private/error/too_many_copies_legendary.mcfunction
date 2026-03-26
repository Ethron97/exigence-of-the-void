# called by analyze_card

## INPUT
#   STR display_name
#   SCORE #relay_to_room_id Temp

#====================================================================================================

data modify storage exigence:hub too_many_copies set value true
scoreboard players add errors deck.analysis 1

$execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #relay_to_room_id Temp run \
tellraw @s [{text:"✖ Deck Error: Found more than 1 copy of ",color:"red"},{text:"$(display_name)",color:"light_purple",bold:false},{text:"",color:"red"}]
