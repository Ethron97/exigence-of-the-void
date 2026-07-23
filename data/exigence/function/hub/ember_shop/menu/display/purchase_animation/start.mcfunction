# Start purchase animation

## CONSTRAINTS
#   AS card display

#====================================================================================================

# Animation lasts cost+30 ticks
scoreboard players operation shop.animation_duration ember_shop = @s ember_shop.cost
#execute if score @s ember_shop.cost matches 21.. run scoreboard players operation shop.animation_duration ember_shop /= 2 number
execute if score shop.double_time ember_shop matches 1 run scoreboard players operation shop.animation_duration ember_shop /= 2 number
# *2 because every-other
scoreboard players operation shop.animation_duration ember_shop *= 2 number

scoreboard players add shop.animation_duration ember_shop 50 

scoreboard players set shop.piece_counter ember_shop 0
scoreboard players set shop.purchase_animation ember_shop 0
scoreboard players set shop.animating ember_shop 1
tag @s add Purchasing
data modify entity @s teleport_duration set value 3

# Set teleport-up-distance (10000 = 1.0000)
#   initial value = blocks (1 - rate of decay)
scoreboard players set @s Random 15000

# Set target coordinates
data modify entity @s item.components."minecraft:custom_data".target_x set value 51.0
data modify entity @s item.components."minecraft:custom_data".target_y set value 215.5
data modify entity @s item.components."minecraft:custom_data".target_z set value 0.5

# Things that happen the instance you purchase the card:
# Particles
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.001 10

# Altar fire gets lit
fill 52 210 -1 52 210 1 soul_fire replace air

# A bunch of runes explode from the fire upward
#   Spawn runes
scoreboard players operation #i Temp = @s ember_shop.cost
execute at @s run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/load_runes

# Interpolate to big
data modify entity @s interpolation_duration set value 8
