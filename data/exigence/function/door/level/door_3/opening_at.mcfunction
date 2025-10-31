# Called by opening, at location to make @es more efficient

## CONSTRAINTS
#   AT location (door handle)

#======================================================================================================

# ALWAYS SET INTERPOLATION TICKS ONE TICK BEFORE INTERPOLATION STARTS

# Key floats towards lock
execute if score Door.3 game.door.inserting_key matches 61 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3HandleKey] run data modify entity @s teleport_duration set value 10
execute if score Door.3 game.door.inserting_key matches 60 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3HandleKey] run tp @s ^ ^ ^-0.125

# Key inserts
execute if score Door.3 game.door.inserting_key matches 59 run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 1.3

# Key turning begins
#   Rotate key
execute if score Door.3 game.door.inserting_key matches 41 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3HandleKey] run data modify entity @s interpolation_duration set value 30
execute if score Door.3 game.door.inserting_key matches 40 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3HandleKey] run data merge entity @s {start_interpolation:-1,transformation:[0.5000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,0.5000f,0.0000f,0.0000f,-0.5000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

#   Rotate slot with key
execute if score Door.3 game.door.inserting_key matches 41 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3Handle] run data modify entity @s interpolation_duration set value 30
execute if score Door.3 game.door.inserting_key matches 40 run execute as @e[distance=..1,type=minecraft:item_display,tag=Door3Handle] run data merge entity @s {start_interpolation:-1,transformation:[-0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

#   Start rotating runes
#execute as @e[type=minecraft:item_display,tag=Door3Handle,scores={InsertingKey=41}] run execute as @e[type=item_display] run data modify entity @s Glowing set value true
execute if score Door.3 game.door.inserting_key matches 41 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring3] run data modify entity @s teleport_duration set value 28
execute if score Door.3 game.door.inserting_key matches 41 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring2] run data modify entity @s teleport_duration set value 19
execute if score Door.3 game.door.inserting_key matches 41 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring1] run data modify entity @s teleport_duration set value 10
execute if score Door.3 game.door.inserting_key matches 40 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring3] at @s run rotate @s ~ -90
execute if score Door.3 game.door.inserting_key matches 40 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring2] at @s run rotate @s ~ 90
execute if score Door.3 game.door.inserting_key matches 40 run execute as @e[distance=..10,type=minecraft:item_display,tag=Ring1] at @s run rotate @s ~ -90

# Start beacon sounds
execute if score Door.3 game.door.inserting_key matches 40 run playsound block.beacon.activate neutral @a ~ ~ ~ 1 1.1

# Rune ring effects
execute if score Door.3 game.door.inserting_key matches 30 run execute as @e[distance=..10,type=item_display,tag=Ring1] run data modify entity @s Glowing set value true
execute if score Door.3 game.door.inserting_key matches 30 run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 3 1.0
execute if score Door.3 game.door.inserting_key matches 20 run execute as @e[distance=..10,type=item_display,tag=Ring2] run data modify entity @s Glowing set value true
execute if score Door.3 game.door.inserting_key matches 20 run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 3 1.4
execute if score Door.3 game.door.inserting_key matches 11 run execute as @e[distance=..10,type=item_display,tag=Ring3] run data modify entity @s Glowing set value true
execute if score Door.3 game.door.inserting_key matches 11 run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 3 1.8

# Finish opening
execute if score Door.3 game.door.inserting_key matches 1 run function exigence:door/level/door_3/open
