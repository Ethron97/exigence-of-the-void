# Handle interact by player

## CONSTRAINTS
#   AS Player who just picked bush

#======================================================================================================

# TUTORIAL:
execute if data storage exigence:dungeon {tutorial:1} as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step
execute if data storage exigence:dungeon {tutorial:1} at @s[tag=Tutorial] as @n[distance=..10,type=minecraft:armor_stand,tag=BerryNode] if score @s NodeID = #compare NodeID run function exigence:botany/node/pick/pick_bush_tutorial
execute if data storage exigence:dungeon {tutorial:1} as @s[tag=Tutorial] run return 1

# Return if dungeon is off
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Increase the player's berry_bushes_picked (total) score by 1
scoreboard players add @s profile.data.berry.cr.berry_bushes_picked 1
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L4 1

# Pick berry bush
execute at @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @n[distance=..10,type=minecraft:armor_stand,tag=BerryNode] if score @s NodeID = #compare NodeID run function exigence:botany/node/pick/pick_bush_harvest_b
execute at @s[nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @n[distance=..10,type=minecraft:armor_stand,tag=BerryNode] if score @s NodeID = #compare NodeID run function exigence:botany/node/pick/pick_bush
