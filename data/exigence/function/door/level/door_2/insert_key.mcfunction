# Called from door/level/handle_interact if key matches the door handle

## CONSTRAINTS
#   AS item_display - door handle

## INPUT
#   FLOAT rot0
#   FLOAT rot1

#======================================================================================================

# DEBUG
#say inserting DOOR 2 key

## HANDLE
#======================================================================================================
# Playsound
execute at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 1 1

# Initialize score
scoreboard players set Door.2 game.door.inserting_key 81

# Call function
schedule function exigence:door/level/door_2/opening 1t


## KEY
#======================================================================================================
# Summon new item_display with the key
#   Spawn on player, teleport with interpolating to the handle
$execute at @a[tag=HandleInteracting] run summon item_display ^ ^1 ^0.5 {teleport_duration:20,Rotation:[$(rot0).0f,$(rot1).0f],billboard:"fixed",Tags:["Door","Door2","DoorHandleKey","NewDoorHandleKey","Door2HandleKey"],item:{id:"minecraft:trial_key",count:1,"components":{"minecraft:custom_model_data":{"strings":["level_2_key"]}}},transformation:[-0.0000f,-0.0000f,0.5000f,0.0000f,-0.5000f,-0.0000f,-0.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# Handle the key item setups
execute at @s as @e[distance=..10,type=item_display,tag=NewDoorHandleKey] run function exigence:door/level/common/insert_key_data
