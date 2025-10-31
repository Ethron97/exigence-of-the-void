# Call as living player

## CONSTRAINTS
#   AS player

#================================================================================================

# Give tag so this card effect call ONLY applies to this player (gets cleared by card call)
tag @s add CardEffecting

# Give 1 minute speed based on their highest
execute if score @s game.player.mod.accelerate matches 10.. run function exigence:player/effects/speed/add_effect_time_card {level:10,duration:1200}
execute if score @s game.player.mod.accelerate matches 9 run function exigence:player/effects/speed/add_effect_time_card {level:10,duration:1200}
execute if score @s game.player.mod.accelerate matches 8 run function exigence:player/effects/speed/add_effect_time_card {level:9,duration:1200}
execute if score @s game.player.mod.accelerate matches 7 run function exigence:player/effects/speed/add_effect_time_card {level:8,duration:1200}
execute if score @s game.player.mod.accelerate matches 6 run function exigence:player/effects/speed/add_effect_time_card {level:7,duration:1200}
execute if score @s game.player.mod.accelerate matches 5 run function exigence:player/effects/speed/add_effect_time_card {level:6,duration:1200}
execute if score @s game.player.mod.accelerate matches 4 run function exigence:player/effects/speed/add_effect_time_card {level:5,duration:1200}
execute if score @s game.player.mod.accelerate matches 3 run function exigence:player/effects/speed/add_effect_time_card {level:4,duration:1200}
execute if score @s game.player.mod.accelerate matches 2 run function exigence:player/effects/speed/add_effect_time_card {level:3,duration:1200}
execute if score @s game.player.mod.accelerate matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:1200}
execute if score @s game.player.mod.accelerate matches 0 run function exigence:player/effects/speed/add_effect_time_card {level:1,duration:1200}
