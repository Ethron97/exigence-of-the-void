# Called when a player attempts to enter a profile selector and there was no available slot (from a door)

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Teleport player back one
execute at @s run tp @s ~3 ~ ~

# Playsound 
execute at @s run playsound minecraft:entity.enderman.hurt ambient @s ~ ~1000 ~ 1000 1

# Message
tellraw @s {text:"All Profile Selector rooms are currently full",color:"red"}
