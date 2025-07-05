# Remove block display and this entity for this

## CONSTRAINTS
#   AS Crystal

#=================================================================================================================

# Vaidate
execute unless entity @s[type=minecraft:interaction,tag=Crystal] run return 1

execute at @s run fill ~ ~ ~ ~ ~ ~ air replace conduit

scoreboard players operation #compare CrystalID = @s CrystalID
execute at @s as @e[distance=..5,type=minecraft:item_display,tag=CrystalDisplay] if score @s CrystalID = #compare CrystalID run kill @s

kill @s
