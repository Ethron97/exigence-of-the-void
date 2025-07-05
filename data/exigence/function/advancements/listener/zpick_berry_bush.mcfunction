# Reset advancement
advancement revoke @s only exigence:listener/pick_berry_bush


# TUTORIAL:
execute as @s[tag=Tutorial] run scoreboard players add @s cr_berryBushesPicked 1
execute at @s[tag=Tutorial] as @e[type=minecraft:armor_stand,tag=BerryNode,sort=nearest,limit=1,scores={ObjectLevel=10}] run function exigence:botany/node/pick/pick_bush

# Return if dungeon is off
execute if data storage exigence:dungeon {is_active:0} run return 1

# Increase the player's t_berryBushesPicked (total) score by 1
scoreboard players add @s t_berryBushesPicked 1
scoreboard players add @s cr_berryBushesPicked 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_berryBushesPickedL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_berryBushesPickedL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_berryBushesPickedL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_berryBushesPickedL4 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_berryBushesPickedL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_berryBushesPickedL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_berryBushesPickedL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_berryBushesPickedL4 1

# Add local tag
tag @s add Picking

# Pick berry bush
execute at @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @e[type=minecraft:armor_stand,tag=BerryNode,sort=nearest,limit=1,tag=Active] run function exigence:botany/node/pick/pick_bush_harvest_b
execute at @s[nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @e[type=minecraft:armor_stand,tag=BerryNode,sort=nearest,limit=1,tag=Active] run function exigence:botany/node/pick/pick_bush

# Debug
#say Berry bush has been picked. If you didn't just pick a berry bush, we have a problem.

# remove local tag
tag @s remove Picking
