# called by analyze_card

## CONSTRAINTS
#   AS player analyzing deck

## INPUT
#   STR display_name

#=============================================================================================================

$tellraw @s [{text:"Error: Found more than 3 copies of ",color:"red"},{text:"$(display_name)",color:"gold"},{text:"",color:"red"}]

$data modify storage exigence:deck_analysis errors append value [{text:"Error: Found more than 3 copies of ",color:"red"},{text:"$(display_name)",color:"gold"},{text:"",color:"red"}]
data modify storage exigence:hub too_many_copies set value true

# Tellraw to other players neraby who share a coop id (without repeating the message to this player)
scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
$execute at @s as @a[distance=0.01..10] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id \
run tellraw @s [{text:"Error: Found more than 3 copies of ",color:"red"},{text:"$(display_name)",color:"gold"},{text:"",color:"red"}]