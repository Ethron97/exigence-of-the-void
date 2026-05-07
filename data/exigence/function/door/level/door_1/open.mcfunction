# Opens the door and handles any additional fucntionality

## CONSTRAINTS
#   AT ItemDisplay (Door1Handle)

#====================================================================================================

# DEBUG
execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Open Door 1

tag @e[type=minecraft:marker,tag=DoorNode,tag=Door1,distance=..10] add ETICK
scoreboard players set 1.opened game.level_doors 1

#====================================================================================================
## SOUNDS
stopsound @a neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~1000 ~ 1000 0.8

#====================================================================================================
## PHYSICAL EFFECTS

fill -331 25 -261 -335 21 -257 air replace barrier

#====================================================================================================
## Particles
function exigence:door/level/common/open_particles

#====================================================================================================
## CLEANUP
kill @e[type=minecraft:item_display,tag=Door1,distance=..10]
kill @e[type=minecraft:interaction,tag=Door1Handle,distance=..10]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_1_key"]}]
# And from the ground (if it was there...)
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=Level1Key]
