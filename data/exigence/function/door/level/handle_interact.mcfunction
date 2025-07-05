# Handles interaction with LEVEL door handles (on right click)

## CONSTRAINTS
#   AS interaction (tag=DoorHandle)

#========================================================================================================

# DEBUG
say Level door handle interaction 

# Reset local tag(s)
tag @a[tag=HandleInteracting] remove HandleInteracting
tag @e[type=minecraft:item_display,tag=HandleInteracting] remove HandleInteracting

# Add tag to clicker
execute on target run tag @s add HandleInteracting



## VERIFY HOLDING KEY
# Return if player is not holding a key
execute unless items entity @a[tag=HandleInteracting,gamemode=adventure] weapon.mainhand #exigence:key run tellraw @a[tag=HandleInteracting] {text:"The door is sealed with ancient magic.",color:"red"}
execute unless items entity @a[tag=HandleInteracting,gamemode=adventure] weapon.mainhand #exigence:key at @s run playsound minecraft:block.copper_grate.break ambient @a ~ ~ ~ 0.5 0.6
execute unless items entity @a[tag=HandleInteracting,gamemode=adventure] weapon.mainhand #exigence:key run return 1



## CHECK MATCH
# Mark DoorHandleID for compare
scoreboard players operation #compare DoorHandleID = @s DoorHandleID
# Get item display with item
execute as @e[type=minecraft:item_display,tag=DoorHandle] if score @s DoorHandleID = #compare DoorHandleID run tag @s add HandleInteracting

# Check if key matches door handle (or master key)
data modify storage exigence:door key_match set value 0
execute if items entity @a[tag=HandleInteracting,limit=1] weapon.mainhand minecraft:ominous_trial_key run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door1Handle] if items entity @a[tag=HandleInteracting,limit=1] weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_1_key"]}] run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door2Handle] if items entity @a[tag=HandleInteracting,limit=1] weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_2_key"]}] run data modify storage exigence:door key_match set value 1
execute if entity @s[tag=Door3Handle] if items entity @a[tag=HandleInteracting,limit=1] weapon.mainhand minecraft:trial_key[custom_model_data={strings:["level_3_key"]}] run data modify storage exigence:door key_match set value 1
execute if entity @a[tag=HandleInteracting,gamemode=creative] run data modify storage exigence:door key_match set value 1


## REJECT KEY
# Return if holding key does not match the door handle
execute if data storage exigence:door {key_match:0} run tellraw @a[tag=HandleInteracting] {text:"That key does not fit.",color:"red"}
execute if data storage exigence:door {key_match:0} at @s run playsound minecraft:block.copper_bulb.place ambient @a ~ ~ ~ 0.5 0.6
execute if data storage exigence:door {key_match:0} run return 1



## SUCCESSFUL KEY
# Kill the vault handle interaction (we no longer need it)
kill @s[type=minecraft:interaction]

# Decrement item in mainhand
item modify entity @a[tag=HandleInteracting,gamemode=!creative] weapon.mainhand exigence:decrement

# Set rotation to something random
execute store result storage exigence:door rot0 float 1 run random value -180..179
execute store result storage exigence:door rot1 float 1 run random value -180..179

# Call successsful insert function
execute if entity @s[tag=Door1Handle] as @e[type=minecraft:item_display,tag=HandleInteracting] run function exigence:door/level/door_1/insert_key with storage exigence:door
execute if entity @s[tag=Door2Handle] as @e[type=minecraft:item_display,tag=HandleInteracting] run function exigence:door/level/door_2/insert_key with storage exigence:door
execute if entity @s[tag=Door3Handle] as @e[type=minecraft:item_display,tag=HandleInteracting] run function exigence:door/level/door_3/insert_key with storage exigence:door

# Remove local tag
execute on target run tag @s remove HandleInteracting
