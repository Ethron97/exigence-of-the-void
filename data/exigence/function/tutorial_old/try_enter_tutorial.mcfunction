# Call as player

execute store result score temp Temp run clear @s * 0
execute if score temp Temp matches 1.. run tellraw @s {text:"Put away your items before entering the tutorial",color:"red"}
execute if score temp Temp matches 0 run function exigence:tutorial_old/enter_tutorial
