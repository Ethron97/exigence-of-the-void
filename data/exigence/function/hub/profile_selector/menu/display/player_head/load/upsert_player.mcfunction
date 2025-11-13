# Upsert this players head

## CONSTRAINTS
#   AS player head player

#=============================================================================================================

# Return if head exists
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players set #temp Temp 0
execute as @e[distance=..16,type=item_display,tag=PlayerHeadDisplay] if score @s hub.entity.player_id = #compare career.player_id run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run return fail

# If head does not exist, create it
execute positioned ~ ~ ~-0.5 run function exigence:hub/profile_selector/menu/display/player_head/load/summon_player_head
