# Load pre-dungeon menu
# Called once on room enter to setup the menu system

## CONSTRAINTS
#   AS player
#   AT position

## INPUT
#   INT profile_id
#   INT coop_profile_id

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load predungeon menu node

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

# Load story preview sidebar (left)
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
in exigence:hub positioned 0.5 209.0 104.5 at @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..10] positioned ~2.75 ~2.5 ~ \
run function exigence:hub/predungeon/menu/display/story_sidebar/load

# Load difficulty reminder sidebar (right)
execute as @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..0.01] at @s run function exigence:hub/predungeon/menu/display/difficulty_sidebar/load
