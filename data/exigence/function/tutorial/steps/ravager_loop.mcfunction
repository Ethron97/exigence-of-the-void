scoreboard players operation Bossbar Tutorial = Step Tutorial
scoreboard players remove Bossbar Tutorial 100
execute store result storage exigence:temp bossbar int 1 run scoreboard players get Bossbar Tutorial
function exigence:bossbar/tutorial/update_value with storage exigence:temp
scoreboard players add Step Tutorial 1