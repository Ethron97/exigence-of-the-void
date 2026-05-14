# Handle interact by player

## CONSTRAINTS
#   AS Player who just picked bush

## INPUT
#   SCORE #compare node.id

#====================================================================================================

# DEBUG
execute if score toggle.berry debug matches 1 if score debug.level debug matches 3.. run say (D3) Berry interact
execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Berry interact (tutorial)

# TUTORIAL:
execute if score tut.active hub.tutorial matches 1 as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step
execute if score tut.active hub.tutorial matches 1 at @s[tag=Tutorial] as @n[type=minecraft:marker,tag=BerryNode,distance=..10] if score @s node.id = #compare node.id run function exigence:botany/node/pick/pick_bush_tutorial
execute if score tut.active hub.tutorial matches 1 as @s[tag=Tutorial] run return 1
#----------------------------------------------------------------------------------------------------

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Increase the player's berry_bushes_picked (total) score by 1
scoreboard players add @s profile.data.berry.cr.berry_bushes_picked 1
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_L4 1

# Pick berry bush
execute at @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @n[type=minecraft:marker,tag=BerryNode,distance=..10] if score @s node.id = #compare node.id run function exigence:botany/node/pick/pick_bush_harvest_b
execute at @s[nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}}] run execute as @n[type=minecraft:marker,tag=BerryNode,distance=..10] if score @s node.id = #compare node.id run function exigence:botany/node/pick/pick_bush
