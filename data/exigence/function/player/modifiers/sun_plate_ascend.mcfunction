# called by game/ascend

## CONSTRAINTS
#   AS player
#       with game.player.mod.sun_plate score 1..

#====================================================================================================

execute if score @s game.player.mod.sun_plate matches 1 run return run function exigence:player/effects/set_effect_time_health {amplifier:1,duration:2400}
execute if score @s game.player.mod.sun_plate matches 2 run return run function exigence:player/effects/set_effect_time_health {amplifier:2,duration:2400}
execute if score @s game.player.mod.sun_plate matches 3..5 run return run function exigence:player/effects/set_effect_time_health {amplifier:3,duration:2400}
#execute if score @s game.player.mod.sun_plate matches 4 run function exigence:player/effects/set_effect_time_health {amplifier:3,duration:2400}
#execute if score @s game.player.mod.sun_plate matches 5 run function exigence:player/effects/set_effect_time_health {amplifier:3,duration:2400}
