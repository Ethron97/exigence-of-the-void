# Opens the door and handles any additional fucntionality

## CONSTRAINTS
#   AT ItemDisplay (Door1Handle)

#============================================================================================================

# DEBUG
#say open Door 1

tag @e[distance=..10,type=minecraft:armor_stand,tag=DoorNode,tag=Door1] add Open
scoreboard players set 1.opened game.level_doors 1

#============================================================================================================
## SOUNDS
stopsound @a neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~1000 ~ 1000 0.8

#============================================================================================================
## PHYSICAL EFFECTS

fill -333 21 -257 -331 25 -259 air replace barrier

#============================================================================================================
## Particles
function exigence:door/level/common/open_particles

#============================================================================================================
## CLEANUP
kill @e[distance=..10,type=minecraft:item_display,tag=Door1]
kill @e[distance=..10,type=minecraft:interaction,tag=Door1Handle]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_1_key"]}]
kill @e[type=item,tag=Level1Key]
