# Called by use_item when player uses phantom membrane item

## CONSTRAINTS
# AS player

#=============================================================================================================

# Check if player is invisible. If yes, call use
execute if score @s effect_invisibility matches 1.. run function exigence:player/use_item/phantom_membrane/private/use

# If not, ssssss
execute unless score @s effect_invisibility matches 1.. run tellraw @s {text:"This item can only be used while invisible",color:"red"}
execute unless score @s effect_invisibility matches 1.. at @s run playsound minecraft:entity.phantom.hurt ambient @s ~ ~5 ~ 1 1
