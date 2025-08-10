scoreboard players operation Bossbar Tutorial = Step Tutorial
scoreboard players operation Bossbar Tutorial %= 100 number
execute store result storage exigence:temp bossbar int 1 run scoreboard players get Bossbar Tutorial
function exigence:bossbar/tutorial/update_value with storage exigence:temp
scoreboard players add Step Tutorial 1
execute if score Step Tutorial matches 1153 run tellraw @a [{color:"green",text:"\nAs you can see, ravagers have no trouble with 2 block high steps."}]