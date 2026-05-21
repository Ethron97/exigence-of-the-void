# Opens the door and handles any additional fucntionality

## CONSTRAINTS
#   AT ItemDisplay (Door2Handle)

#====================================================================================================

# DEBUG
execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Open Door 2

tag @n[type=minecraft:marker,tag=DoorNode,tag=Door2,distance=..10] add ETICK
scoreboard players set 2.opened game.level_doors 1

#====================================================================================================
## SOUNDS
stopsound @a[distance=..16] neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~ ~ 3 0.8

#====================================================================================================
## PHYSICAL EFFECTS
# Remove barriers that stop ravagers from camping the door
#fill -383 139 -79 -387 139 -79 air replace barrier

fill -383 132 -90 -387 136 -90 air replace barrier
fill -383 136 -89 -387 132 -89 air replace barrier

#====================================================================================================
## Particles
function exigence:door/level/common/open_particles

#====================================================================================================
## ANNOUNCE
tellraw @a[tag=ActivePlayer] [{text:"!!! ",bold:true,color:"aqua"},{text:"The door to the ",color:"gray",bold:false},{text:"Temple of Fervor ",color:"blue",bold:false},{text:"has been opened!",color:"gray",bold:false}]

#====================================================================================================
## CLEANUP
kill @e[type=minecraft:item_display,tag=Door2,distance=..10]
kill @e[type=minecraft:interaction,tag=Door2Handle,distance=..10]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_2_key"]}]
# And from the ground (if it was there...)
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=Level2Key]
