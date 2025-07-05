# Opens the door and handles any additional fucntionality
#say open Door 2

## CONSTRAINTS
#   AT ItemDisplay (Door2Handle)

#============================================================================================================

# DEBUG
#say open Door 2

#============================================================================================================
## SOUNDS
stopsound @a neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~1000 ~ 1000 0.8

#============================================================================================================
## PHYSICAL EFFECTS
# Remove barriers that stop ravagers from camping the door
#fill -383 139 -79 -387 139 -79 air replace barrier

fill -383 132 -90 -387 136 -90 air replace barrier

#============================================================================================================
## Particles
function exigence:door/level/common/open_particles

#============================================================================================================
## CLEANUP
tag @e[type=minecraft:armor_stand,tag=DoorNode,tag=Door2] add Open

kill @e[distance=..10,type=minecraft:item_display,tag=Door2]
kill @e[distance=..10,type=minecraft:interaction,tag=Door2Handle]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_2_key"]}]
kill @e[type=item,tag=Level2Key]
