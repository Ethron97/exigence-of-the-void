# Called by pick_bush functions

## CONSTRAINTS
# AS player
# After picking bush called from setup

#====================================================================================================

scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_setup 1
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_setup_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_setup_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_setup_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_setup_L4 1
