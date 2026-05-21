scoreboard players operation #temp Temp = tut.bossbar hub.tutorial
#scoreboard players operation #temp Tutorial /= 2 number
execute store result storage exigence:temp bossbar int 1 run scoreboard players get #temp Temp
function exigence:bossbar/tutorial/update_value with storage exigence:temp

scoreboard players add tut.bossbar hub.tutorial 1

execute if score tut.bossbar hub.tutorial matches ..99 run schedule function exigence:tutorial/flow/private/ravager_loop 1t
execute if score tut.bossbar hub.tutorial matches 100 in exigence:tutorial run function exigence:tutorial/flow/step
