scoreboard players operation #temp Tutorial = Bossbar Tutorial
#scoreboard players operation #temp Tutorial /= 2 number
execute store result storage exigence:temp bossbar int 1 run scoreboard players get #temp Tutorial
function exigence:bossbar/tutorial/update_value with storage exigence:temp

scoreboard players add Bossbar Tutorial 1

execute if score Bossbar Tutorial matches ..99 run schedule function exigence:tutorial/flow/private/ravager_loop 1t
execute if score Bossbar Tutorial matches 100 in exigence:tutorial run function exigence:tutorial/flow/step

