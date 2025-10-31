# Remove block display and this entity for this

## CONSTRAINTS
#   AS Crystal

#=================================================================================================================

# Vaidate
execute unless entity @s[type=minecraft:interaction,tag=Crystal] run return 1

execute at @s run fill ~ ~ ~ ~ ~ ~ air replace conduit

scoreboard players operation #compare game.story.ward_crystal.node_id = @s game.story.ward_crystal.node_id
execute at @s as @e[distance=..5,type=minecraft:item_display,tag=CrystalDisplay] if score @s game.story.ward_crystal.node_id = #compare game.story.ward_crystal.node_id run kill @s

kill @s
