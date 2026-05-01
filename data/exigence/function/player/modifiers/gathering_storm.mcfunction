# Increase player item pickup radius

## CONSTRAINTS
#   AS/AT player speed effect and Gathering Storm artifact

#====================================================================================================

# Get players's speed modifier
scoreboard players set @s Temp 0

# OUTPUTS: Temp = speed modifier
function exigence:player/modifiers/private/get_speed_modifier

# Call corresponding effect
## SWITCH
execute if score @s Temp matches 1 run return run function exigence:player/modifiers/private/gathering_storm_speed_1
execute if score @s Temp matches 2 run return run function exigence:player/modifiers/private/gathering_storm_speed_2
execute if score @s Temp matches 3 run return run function exigence:player/modifiers/private/gathering_storm_speed_3
execute if score @s Temp matches 4 run return run function exigence:player/modifiers/private/gathering_storm_speed_4
execute if score @s Temp matches 5 run return run function exigence:player/modifiers/private/gathering_storm_speed_5
execute if score @s Temp matches 6 run return run function exigence:player/modifiers/private/gathering_storm_speed_6
execute if score @s Temp matches 7 run return run function exigence:player/modifiers/private/gathering_storm_speed_7
execute if score @s Temp matches 8 run return run function exigence:player/modifiers/private/gathering_storm_speed_8
execute if score @s Temp matches 9 run return run function exigence:player/modifiers/private/gathering_storm_speed_9
execute if score @s Temp matches 10 run return run function exigence:player/modifiers/private/gathering_storm_speed_10
