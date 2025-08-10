# Called by button press in the tutorial

## CONSTRAINTS
#   Set #i Tutorial to 0 before calling

#=============================================================================================================

execute at @a[tag=Tutorial] in exigence:tutorial run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 0.9

scoreboard players add #i Tutorial 1

execute if score #i Tutorial matches ..2 run schedule function exigence:tutorial/flow/heartbeat/sample_1 44t
