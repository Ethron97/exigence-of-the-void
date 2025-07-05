# Opens the door and handles any additional fucntionality
#say open Door 3

## CONSTRAINTS
#   AT ItemDisplay (Door3Handle)

#============================================================================================================

# DEBUG
#say open Door 3

#============================================================================================================
## SOUNDS
stopsound @a neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~1000 ~ 1000 0.8

#============================================================================================================
## PHYSICAL EFFECTS
#fill -365 172 -86 -359 179 -86 minecraft:air replace minecraft:light_blue_stained_glass_pane
#fill -365 172 -86 -359 179 -86 minecraft:air replace minecraft:white_stained_glass_pane

# Clone half-door in place so ravagers can't get through
#clone -366 148 -103 -358 157 -103 -366 171 -86

fill -364 172 -86 -360 176 -86 air replace barrier

#============================================================================================================
# PARTICLES
function exigence:door/level/common/open_particles

#============================================================================================================
## CLEANUP
tag @e[type=minecraft:armor_stand,tag=DoorNode,tag=Door3] add Open

kill @e[distance=..10,type=minecraft:item_display,tag=Door3]
kill @e[distance=..10,type=minecraft:interaction,tag=Door3Handle]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_3_key"]}]
kill @e[type=item,tag=Level3Key]
