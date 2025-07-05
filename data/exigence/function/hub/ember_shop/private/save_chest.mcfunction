## CONSTRAINTS
#   AS player

#===================================================================================================

# DEBUG
#say Save ember shop chest

# Clear embers (blaze powder) before saving
execute positioned -273 17 -36 if items block ~ ~ ~ container.* blaze_powder run function exigence:misc/general/clear_embers_from_chest
execute positioned -273 17 -35 if items block ~ ~ ~ container.* blaze_powder run function exigence:misc/general/clear_embers_from_chest

# Load chests from player id
scoreboard players operation #compare PlayerID = @s PlayerID
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #compare PlayerID run tag @s add ChestLoad
execute at @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run data modify block ~2 ~ ~1 Items set from block -273 17 -36 Items
execute at @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run data modify block ~2 ~ ~ Items set from block -273 17 -35 Items

execute as @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run tag @s remove ChestLoad

# Reset chest
fill -273 17 -36 -273 17 -35 air replace trapped_chest
