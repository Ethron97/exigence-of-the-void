# Upsert this players head
#   Remove where exists but player has logged off

## CONSTRAINTS
#   AS player head display

## INPUT
#   INT head_player_id (from data.components."minecraft:custom_data)"

#=============================================================================================================
execute unless entity @s[type=item_display,tag=PlayerHeadDisplay] run return 1
#=============================================================================================================

# Kill self unless player is found with matching score
$execute if entity @a[scores={career.player_id=$(head_player_id)}] run return 1

kill @s
