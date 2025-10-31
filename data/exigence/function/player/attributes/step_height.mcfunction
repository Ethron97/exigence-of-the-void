# Updates step height modifier for QoL
# Called by player/tick/tick_alive

## CONSTRAINTS
#   AS player

#=========================================================================================================

# Reset working score
scoreboard players set #temp Temp 0

# IF jump boost or speed 3+
scoreboard players operation #temp Temp > @s game.player.effects.jump
scoreboard players operation #temp Temp > @s game.player.effects.jump4
scoreboard players operation #temp Temp > @s game.player.effects.jump6
scoreboard players operation #temp Temp > @s game.player.effects.jump8
scoreboard players operation #temp Temp > @s game.player.effects.speed2
scoreboard players operation #temp Temp > @s game.player.effects.speed3
scoreboard players operation #temp Temp > @s game.player.effects.speed4
scoreboard players operation #temp Temp > @s game.player.effects.speed5
scoreboard players operation #temp Temp > @s game.player.effects.speed6
scoreboard players operation #temp Temp > @s game.player.effects.speed7
scoreboard players operation #temp Temp > @s game.player.effects.speed8
scoreboard players operation #temp Temp > @s game.player.effects.speed9
scoreboard players operation #temp Temp > @s game.player.effects.speed10

# Reset if no effects
execute if score #temp Temp matches 0 run attribute @s minecraft:step_height modifier remove exigence:step_height_qol

# Double step height (0.6 -> 1.2)
#   This wont stack because you can't add a modifier with the same name, so we're good
execute if score #temp Temp matches 1.. run attribute @s minecraft:step_height modifier add exigence:step_height_qol 1 add_multiplied_base
