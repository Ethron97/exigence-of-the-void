# Called by gametick as player

# CONSTRAINTS
# AS player alive
# MaxMenace = true

#================================================================================================================

execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.gametime.cr.max_menace_ticks_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.gametime.cr.max_menace_ticks_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.gametime.cr.max_menace_ticks_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.gametime.cr.max_menace_ticks_L4 1
