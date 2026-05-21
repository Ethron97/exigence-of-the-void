# Call as living player

## CONSTRAINTS
#   AS player

#====================================================================================================

# Give tag so this card effect call ONLY applies to this player (gets cleared by card call)
tag @s add CardEffecting

execute if score @s game.player.mod.accelerate matches 0 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 1",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 1 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 2",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 2 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 3",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 3 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 4",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 4 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 5",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 5 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 6",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 6 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 7",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 7 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 8",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 8 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 9",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 9 run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 10",color:"yellow"}]
execute if score @s game.player.mod.accelerate matches 10.. run tellraw @s [{text:" └ +60 seconds of ",color:"gray"},{text:"Speed 11",color:"yellow"}]

# Give 1 minute speed based on their highest
execute if score @s game.player.mod.accelerate matches 0 run return run function exigence:player/effects/speed/add_effect_time_card {level:1,duration:1200}
execute if score @s game.player.mod.accelerate matches 1 run return run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:1200}
execute if score @s game.player.mod.accelerate matches 2 run return run function exigence:player/effects/speed/add_effect_time_card {level:3,duration:1200}
execute if score @s game.player.mod.accelerate matches 3 run return run function exigence:player/effects/speed/add_effect_time_card {level:4,duration:1200}
execute if score @s game.player.mod.accelerate matches 4 run return run function exigence:player/effects/speed/add_effect_time_card {level:5,duration:1200}
execute if score @s game.player.mod.accelerate matches 5 run return run function exigence:player/effects/speed/add_effect_time_card {level:6,duration:1200}
execute if score @s game.player.mod.accelerate matches 6 run return run function exigence:player/effects/speed/add_effect_time_card {level:7,duration:1200}
execute if score @s game.player.mod.accelerate matches 7 run return run function exigence:player/effects/speed/add_effect_time_card {level:8,duration:1200}
execute if score @s game.player.mod.accelerate matches 8 run return run function exigence:player/effects/speed/add_effect_time_card {level:9,duration:1200}
execute if score @s game.player.mod.accelerate matches 9 run return run function exigence:player/effects/speed/add_effect_time_card {level:10,duration:1200}
execute if score @s game.player.mod.accelerate matches 10.. run return run function exigence:player/effects/speed/add_effect_time_card {level:11,duration:1200}
