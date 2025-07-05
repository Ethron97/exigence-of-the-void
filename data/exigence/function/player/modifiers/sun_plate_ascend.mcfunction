# called by game/ascend

## CONSTRAINTS
#   AS player
#       with mod_SunPlate score 1..

#================================================================================

execute if score @s mod_SunPlate matches 1 run function exigence:player/effects/set_effect_time_health {amplifier:0,duration:12000}
execute if score @s mod_SunPlate matches 2 run function exigence:player/effects/set_effect_time_health {amplifier:1,duration:12000}
execute if score @s mod_SunPlate matches 3 run function exigence:player/effects/set_effect_time_health {amplifier:2,duration:12000}
execute if score @s mod_SunPlate matches 4 run function exigence:player/effects/set_effect_time_health {amplifier:3,duration:12000}
execute if score @s mod_SunPlate matches 5 run function exigence:player/effects/set_effect_time_health {amplifier:1,duration:12000}
