# Handles interaction with LEVEL door handles (on right click)

## CONSTRAINTS
#   AS/AT interaction (tag=DoorHandle)

#====================================================================================================

# DEBUG
say (D3) Level door handle interaction 

## VERIFY HOLDING KEY
# Return if player is not holding a key
execute on target unless items entity @s[gamemode=adventure] weapon.mainhand #exigence:key run tellraw @s {text:"✖ The door is sealed with ancient magic. You must find the matching key!",color:"red"}
execute on target unless items entity @s[gamemode=adventure] weapon.mainhand #exigence:key run return run playsound minecraft:block.copper_grate.break ambient @a ~ ~ ~ 0.5 0.6
#----------------------------------------------------------------------------------------------------

## CHECK MATCH
# Check if key matches door handle (or master key (or creative))
data modify storage exigence:door key_match set value 0
execute on target if items entity @s weapon.mainhand minecraft:ominous_trial_key run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door1Handle] on target if items entity @s weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_1_key"]}] run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door2Handle] on target if items entity @s weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_2_key"]}] run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door3Handle] on target if items entity @s weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_3_key"]}] run data modify storage exigence:door key_match set value 1
execute on target if entity @s[gamemode=creative] run data modify storage exigence:door key_match set value 1

## REJECT KEY
# Return if holding key does not match the door handle
execute if data storage exigence:door {key_match:0} on target run tellraw @s {text:"✖ That key does not fit!",color:"red"}
execute if data storage exigence:door {key_match:0} run return run playsound minecraft:block.copper_bulb.place ambient @a ~ ~ ~ 0.5 0.6
#----------------------------------------------------------------------------------------------------

## SUCCESSFUL KEY
# Kill the vault handle interaction (we no longer need it)
kill @s[type=minecraft:interaction]

# Decrement item in mainhand
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand exigence:decrement

# Set rotation to something random
execute store result storage exigence:door rot0 float 1 run random value -180..179
execute store result storage exigence:door rot1 float 1 run random value -180..179

# Call successsful insert function
execute if entity @s[tag=Door1Handle] on target at @s as @n[type=minecraft:item_display,tag=DoorHandle,distance=..10] run function exigence:door/level/door_1/insert_key with storage exigence:door
execute if entity @s[tag=Door2Handle] on target at @s as @n[type=minecraft:item_display,tag=DoorHandle,distance=..10] run function exigence:door/level/door_2/insert_key with storage exigence:door
execute if entity @s[tag=Door3Handle] on target at @s as @n[type=minecraft:item_display,tag=DoorHandle,distance=..10] run function exigence:door/level/door_3/insert_key with storage exigence:door

# Remove local tag
execute on target run tag @s remove HandleInteracting
