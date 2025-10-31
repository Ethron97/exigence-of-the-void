# Keeps the new player out of trouble...
execute store result score Z temp_coords as @a[tag=ActivePlayer] run data get entity @s Pos[2] 1
execute as @a[tag=ActivePlayer] at @s if score Z temp_coords matches ..-159 anchored eyes run tp @s ~ ~ ~1 facing ^ ^ ^-10
execute as @a[tag=ActivePlayer] at @s if score Z temp_coords matches ..-159 run tellraw @s {text:"You must prove your worth before going further...",italic: false,color:"light_purple"}
execute as @a[tag=ActivePlayer] at @s if score Z temp_coords matches ..-159 run playsound minecraft:entity.enderman.teleport ambient @s