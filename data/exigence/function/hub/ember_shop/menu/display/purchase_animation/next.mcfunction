# Finish purchase animation

## CONSTRAINTS
#   AS card display

#====================================================================================================

# Next animation frame
scoreboard players add shop.purchase_animation ember_shop 1

# Start small to big
execute if score shop.purchase_animation ember_shop matches 1 run data merge entity @s {start_interpolation:-1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[2.0f,2.0f,0.5f]}}

# Every 3 ticks
scoreboard players operation #temp Temp = shop.purchase_animation ember_shop
scoreboard players operation #temp Temp %= 3 number
execute if score #temp Temp matches 0 if score shop.purchase_animation ember_shop matches ..25 run function exigence:hub/ember_shop/menu/display/purchase_animation/private/teleport
execute if score #temp Temp matches 0 as @e[type=minecraft:item_display,tag=Rune,distance=..15] run function exigence:hub/ember_shop/menu/display/purchase_animation/private/teleport

#====================================================================================================
## POP
# After X, pop a random rune (every other tick)
scoreboard players operation #temp Temp = shop.purchase_animation ember_shop
scoreboard players operation #temp Temp %= 2 number
# Make sure only 1 pop actually adds a "piece"
scoreboard players set #already_converted ember_shop 0
# Get pop pitch:
scoreboard players operation #temp2 Temp = shop.purchase_animation ember_shop
scoreboard players operation #temp2 Temp /= 2 number
scoreboard players add #temp2 Temp 80
execute store result storage exigence:card_shop pitch float 0.01 run scoreboard players get #temp2 Temp
# Pop 1-2
execute if score #temp Temp matches 0 if score shop.purchase_animation ember_shop matches 30.. as @e[type=minecraft:item_display,tag=Rune,distance=..15,sort=random,limit=1] run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/pop with storage exigence:card_shop
execute if score #temp Temp matches 0 if score shop.purchase_animation ember_shop matches 30.. if score shop.double_time ember_shop matches 1 as @e[type=minecraft:item_display,tag=Rune,distance=..15,sort=random,limit=1] run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/pop with storage exigence:card_shop

#====================================================================================================
## SHRINK
scoreboard players operation #temp Temp = shop.animation_duration ember_shop
scoreboard players operation #temp Temp -= shop.purchase_animation ember_shop
# Set interpolation at T-11
execute if score #temp Temp matches 11 as @e[type=minecraft:item_display,tag=Piece,distance=..10] run data modify entity @s interpolation_duration set value 10
data modify entity @s interpolation_duration set value 10
# Start scaling down at T-10
execute if score #temp Temp matches 10 run data merge entity @s {start_interpolation:-1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
# And pieces
execute if score #temp Temp matches 10 as @e[type=minecraft:item_display,tag=Piece,distance=..10] run data merge entity @s {start_interpolation:-1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

#====================================================================================================
## FINISH
execute if score shop.purchase_animation ember_shop >= shop.animation_duration ember_shop run function exigence:hub/ember_shop/menu/display/purchase_animation/finish
