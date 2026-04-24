# Load pre-dungeon menu
# Called once on room enter to setup the menu system

## CONSTRAINTS
#   AS player
#   AT position

## INPUT
#   INT profile_id
#   INT coop_profile_id

#====================================================================================================

#say (D3) Load predungeon menu node

# Load menu node
summon minecraft:marker ~ ~ ~ {Tags:["PredungeonMenuNode"]}

scoreboard players operation #compare profile.player.profile_difficulty = @s profile.player.profile_difficulty

scoreboard players operation @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] hub.entity.room_id = @s hub.player.room_id
# Copy scores
scoreboard players operation @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] hub.entity.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. \
run scoreboard players operation @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] hub.entity.coop_profile_id = @s profile.player.coop_profile_id

# Load door + frame
execute as @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] at @s run function exigence:hub/predungeon/menu/display/warp_door/load

# Load menu a
execute as @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] at @s run function exigence:hub/predungeon/menu/display/pre_button/load
