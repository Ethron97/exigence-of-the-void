# Called from try_consume if a card is played and fails due to lack of resources

## CONSTRAINTS
#   AS/AT 1 player with magma cream in their inventory

#====================================================================================================

# If missing resources is 0, return
execute if score #Missing game.resources matches 0 run return 0
#----------------------------------------------------------------------------------------------------

scoreboard players set #used_cream game.resources 1

# Call resource function
function exigence:resources/apply_magma_cream

# Clear
clear @s magma_cream 1

# Playsound
playsound minecraft:entity.slime.squish player @a ~ ~ ~ 1 1

# Tellraw
# TODO nbt lore on hover
tellraw @a [{text:" └ ",color:"gray"},{selector:"@s",color:"dark_aqua"},{text:" Consumed ",color:"gray"},{sprite:"minecraft:item/magma_cream",atlas:"items",color:"white"}]

# Particles
particle minecraft:item{item:{id:"minecraft:magma_cream"}} ^ ^1 ^0.5 0.2 0.2 0.2 0.03 10