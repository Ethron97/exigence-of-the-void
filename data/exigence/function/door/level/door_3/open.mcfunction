# Opens the door and handles any additional fucntionality

## CONSTRAINTS
#   AT ItemDisplay (Door3Handle)

#====================================================================================================

# DEBUG
execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Open Door 3

tag @n[type=minecraft:marker,tag=DoorNode,tag=Door3,distance=..10] add ETICK
scoreboard players set 3.opened game.level_doors 1

#====================================================================================================
## SOUNDS
stopsound @a[distance=..16] neutral block.beacon.activate
playsound item.totem.use neutral @a ~ ~ ~ 3 0.8

#====================================================================================================
## PHYSICAL EFFECTS
#fill -365 172 -86 -359 179 -86 minecraft:air replace minecraft:light_blue_stained_glass_pane
#fill -365 172 -86 -359 179 -86 minecraft:air replace minecraft:white_stained_glass_pane

# Clone half-door in place so ravagers can't get through
#clone -366 148 -103 -358 157 -103 -366 171 -86

fill -364 172 -86 -360 176 -86 air replace barrier
fill -360 172 -87 -364 176 -87 air replace barrier

#====================================================================================================
# PARTICLES
function exigence:door/level/common/open_particles

#====================================================================================================
## ANNOUNCE
tellraw @a[tag=ActivePlayer] [{text:"!!! ",bold:true,color:"aqua"},{text:"The door to ",color:"gray",bold:false},{text:"Ardor's Bane ",color:"light_purple",bold:false},{text:"has been opened!",color:"gray",bold:false}]

#====================================================================================================
## CLEANUP
kill @e[type=minecraft:item_display,tag=Door3,distance=..10]
kill @e[type=minecraft:interaction,tag=Door3Handle,distance=..10]

# Clear level key from other players (if it was opened by a non-key method)
clear @a trial_key[custom_model_data={strings:["level_3_key"]}]
# And the ground (if it was there...)
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=Level3Key]
