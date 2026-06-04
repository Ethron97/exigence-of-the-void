# Decrease heighten (queued by add_effect_time_card, called by end of game_tick)

## CONSTRAINTS
#   AS player
#       tag=ReduceHeighten

#====================================================================================================

tag @s remove ReduceHeighten

# Decrease heighten level by 1
scoreboard players remove @s game.player.heighten 1
scoreboard players operation @s game.player.heighten > 0 number

# Update player effect
function exigence:player/effects/heighten/update_effect

# Playsound
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @s ~ ~1000 ~ 1000 1

execute unless score @s game.player.mod.war_paint matches 1 run tellraw @s [{text:" └─ [",color:"gray"},{text:"Heighten",color:"yellow"},{text:"]: Effect durations ",color:"gray"},{text:"Doubled",color:"yellow"}]
execute if score @s game.player.mod.war_paint matches 1 run tellraw @s [{text:" └─ [",color:"gray"},{text:"War Paint",color:"red"},{text:"]: Effect durations ",color:"gray"},{text:"Tripled",color:"red"}]