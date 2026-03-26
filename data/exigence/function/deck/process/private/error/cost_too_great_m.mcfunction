# Called by analyze_card

## CONSTRAINTS
#   AS profile node

## INPUT
#   STR display_name
#   STR resource (eg "green", "red", "aqua")
#   STR resource_color
#   STR rarity_color
#   SCORE #relay_to_room_id

#====================================================================================================

#say Cost too great

scoreboard players add warnings deck.analysis 1

$execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #relay_to_room_id Temp run \
tellraw @s \
[{text:"Deck Warning: Cost of ",color:"#FFDD00"},{text:"$(display_name)",color:"$(rarity_color)",bold:false},{text:" ( ",color:"#FFDD00",bold:false},{score:{name:"$(resource).cost",objective:"game.resources"}\
,color:"$(resource_color)"},{text:" ) exceeds maximum supported by deck ( "},{score:{name:"resource.$(resource).max",objective:"deck.analysis"},color:"$(resource_color)"}\
,{text:" ).",color:"#FFDD00"}]
