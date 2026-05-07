# Remove block display and this entity for this

## CONSTRAINTS
#   AS Crystal

#====================================================================================================

# Vaidate
execute unless entity @s[type=minecraft:interaction,tag=Crystal] run return 1
#----------------------------------------------------------------------------------------------------

execute at @s run fill ~ ~ ~ ~ ~ ~ air replace conduit

scoreboard players operation #compare game.story.ward_crystal.id = @s game.story.ward_crystal.id
execute at @s as @e[type=minecraft:item_display,tag=CrystalDisplay,distance=..5] if score @s game.story.ward_crystal.id = #compare game.story.ward_crystal.id run kill @s

kill @s
