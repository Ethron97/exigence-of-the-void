# Removes invisibility and rejoins player team
#   Call as player

scoreboard players set @s effect_invisibility 0
effect clear @s invisibility

tellraw @s {text:"Your position has been revealed",color:"red",italic:true}

# Playsound
execute at @s run playsound minecraft:entity.elder_guardian.curse hostile @s ~ ~1000 ~ 1000 1

# Team joijn player
team join Player @s
