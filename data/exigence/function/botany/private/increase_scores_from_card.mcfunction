# Called by pick_bush functions

## CONSTRAINTS
# AS player
# After picking bush called from card

#====================================================================================================

scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_cards 1
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_cards_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_cards_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_cards_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.berry.cr.berry_bushes_picked_from_cards_L4 1
