# Called by analyze_card

## CONSTRAINTS
#   AS player analyzing deck

## INPUT
#   STR display_name
#   STR resource (eg "green", "red", "aqua")
#   STR resource_color
#   STR rarity_color

#====================================================================================================

$tellraw @s \
[{text:"Warning: Cost of ",color:"#FFDD00"},{text:"$(display_name)",color:"$(rarity_color)",bold:true},{text:" ( ",color:"#FFDD00",bold:false},{score:{name:"$(resource).cost",objective:"game.resources"}\
,color:"$(resource_color)"},{text:" ) exceeds maximum supported by deck ( "},{score:{name:"resource.$(resource).max",objective:"deck.analysis"},color:"$(resource_color)"}\
,{text:" ).",color:"#FFDD00"}]

$data modify storage exigence:deck_analysis warnings append value \
[{text:"Warning: Cost of ",color:"#FFDD00"},{text:"$(display_name)",color:"$(rarity_color)",bold:true},{text:" ( ",color:"#FFDD00",bold:false},{score:{name:"$(resource).cost",objective:"game.resources"}\
,color:"$(resource_color)"},{text:" ) exceeds maximum supported by deck ( "},{score:{name:"resource.$(resource).max",objective:"deck.analysis"},color:"$(resource_color)"}\
,{text:" ).",color:"#FFDD00"}]

# Tellraw to other players neraby who share a coop id (without repeating the message to this player)
scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
$execute at @s as @a[distance=0.01..10] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id \
run tellraw @s \
[{text:"Warning: Cost of ",color:"#FFDD00"},{text:"$(display_name)",color:"$(rarity_color)",bold:true},{text:" ( ",color:"#FFDD00",bold:false},{score:{name:"$(resource).cost",objective:"game.resources"}\
,color:"$(resource_color)"},{text:" ) exceeds maximum supported by deck ( "},{score:{name:"resource.$(resource).max",objective:"deck.analysis"},color:"$(resource_color)"}\
,{text:" ).",color:"#FFDD00"}]