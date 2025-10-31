# Plays sniff sound from warden

## CONSTRAINTS
#   AS Warden

#=================================================================================================================

# Play sniff at higher frequencies the closer they are to aggro
execute if score @s game.warden.awareness matches ..10 run playsound minecraft:sniff hostile @a ~ ~ ~ 3 1
execute if score @s game.warden.awareness matches 11..15 run playsound minecraft:sniff hostile @a ~ ~ ~ 3 1.1
execute if score @s game.warden.awareness matches 16..20 run playsound minecraft:sniff hostile @a ~ ~ ~ 3 1.2
execute if score @s game.warden.awareness matches 21..25 run playsound minecraft:sniff hostile @a ~ ~ ~ 3 1.3
execute if score @s game.warden.awareness matches 26..30 run playsound minecraft:sniff hostile @a ~ ~ ~ 3 1.5
