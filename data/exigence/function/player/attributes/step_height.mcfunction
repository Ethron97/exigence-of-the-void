# Updates step height modifier for QoL
# Called by player/tick/tick_alive

## CONSTRAINTS
#   AS player

#=========================================================================================================

# Reset working score
scoreboard players set temp Temp 0

# IF jump boost or speed 3+
scoreboard players operation temp Temp > @s effect_jump
scoreboard players operation temp Temp > @s effect_jump4
scoreboard players operation temp Temp > @s effect_jump6
scoreboard players operation temp Temp > @s effect_jump8
scoreboard players operation temp Temp > @s effect_speed2
scoreboard players operation temp Temp > @s effect_speed3
scoreboard players operation temp Temp > @s effect_speed4
scoreboard players operation temp Temp > @s effect_speed5
scoreboard players operation temp Temp > @s effect_speed6
scoreboard players operation temp Temp > @s effect_speed7
scoreboard players operation temp Temp > @s effect_speed8
scoreboard players operation temp Temp > @s effect_speed9
scoreboard players operation temp Temp > @s effect_speed10

# Reset if no effects
execute if score temp Temp matches 0 run attribute @s minecraft:step_height modifier remove exigence:step_height_qol

# Double step height (0.6 -> 1.2)
#   This wont stack because you can't add a modifier with the same name, so we're good
execute if score temp Temp matches 1.. run attribute @s minecraft:step_height modifier add exigence:step_height_qol 1 add_multiplied_base
