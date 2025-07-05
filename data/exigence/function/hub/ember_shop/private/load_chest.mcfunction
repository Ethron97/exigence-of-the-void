## CONSTRAINTS
#   Set #compare as player before calling this

#==================================================================================================

# DEBUG
#say Load ember shop chest

# Set blocks to chest
setblock -273 17 -36 trapped_chest[facing=west,type=right]
setblock -273 17 -35 trapped_chest[facing=west,type=left]
data modify block -273 17 -35 CustomName set value {text:"Deck"}

# Load chests from player id
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #compare PlayerID run tag @s add ChestLoad
execute at @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run data modify block -273 17 -36 Items set from block ~2 ~ ~1 Items
execute at @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run data modify block -273 17 -35 Items set from block ~2 ~ ~ Items

execute as @e[type=minecraft:armor_stand,tag=PlayerNode,tag=ChestLoad] run tag @s remove ChestLoad
