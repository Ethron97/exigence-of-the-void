# Called if a node was not found

## CONSTRAINTS
#   AS/AT player

#=============================================================================================================

tellraw @s {text:"No valid node found",color:"red"}
playsound minecraft:entity.phantom.hurt ambient @s ~ ~5 ~ 1 1
tag @e[type=block_display,tag=ItemPreview,tag=Updating] remove Updating
