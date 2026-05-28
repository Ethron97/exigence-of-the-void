# Called by button press in the tutorial

## CONSTRAINTS
#   Set #i hub.tutorial to 0 before calling

#====================================================================================================

execute at @a[tag=Tutorial] in exigence:tutorial run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1.0

scoreboard players add #i hub.tutorial 1

execute if score #i hub.tutorial matches ..2 run schedule function exigence:tutorial/flow/heartbeat/sample_2 24t
