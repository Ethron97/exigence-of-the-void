# Increase player item pickup radius

## CONSTRAINTS
#   AS player speed effect and Gathering Storm artifact

#=============================================================================================================

# Get players's speed modifier
scoreboard players set @s Temp 0
execute if score @s effect_speed1 matches 1.. run scoreboard players set @s Temp 1
execute if score @s effect_speed2 matches 1.. run scoreboard players set @s Temp 2
execute if score @s effect_speed3 matches 1.. run scoreboard players set @s Temp 3
execute if score @s effect_speed4 matches 1.. run scoreboard players set @s Temp 4
execute if score @s effect_speed5 matches 1.. run scoreboard players set @s Temp 5
execute if score @s effect_speed6 matches 1.. run scoreboard players set @s Temp 6
execute if score @s effect_speed7 matches 1.. run scoreboard players set @s Temp 7
execute if score @s effect_speed8 matches 1.. run scoreboard players set @s Temp 8
execute if score @s effect_speed9 matches 1.. run scoreboard players set @s Temp 9
execute if score @s effect_speed10 matches 1.. run scoreboard players set @s Temp 10

# Call corresponding effect
execute at @s if score @s Temp matches 1 run function exigence:player/modifiers/private/gathering_storm_speed_1
execute at @s if score @s Temp matches 2 run function exigence:player/modifiers/private/gathering_storm_speed_2
# Early return because we already covered 99.9% cases
execute unless score @s Temp matches 3.. run return 0
execute at @s if score @s Temp matches 3 run function exigence:player/modifiers/private/gathering_storm_speed_3
execute at @s if score @s Temp matches 4 run function exigence:player/modifiers/private/gathering_storm_speed_4
execute at @s if score @s Temp matches 5 run function exigence:player/modifiers/private/gathering_storm_speed_5
execute at @s if score @s Temp matches 6 run function exigence:player/modifiers/private/gathering_storm_speed_6
execute at @s if score @s Temp matches 7 run function exigence:player/modifiers/private/gathering_storm_speed_7
execute at @s if score @s Temp matches 8 run function exigence:player/modifiers/private/gathering_storm_speed_8
execute at @s if score @s Temp matches 9 run function exigence:player/modifiers/private/gathering_storm_speed_9
execute at @s if score @s Temp matches 10 run function exigence:player/modifiers/private/gathering_storm_speed_10
