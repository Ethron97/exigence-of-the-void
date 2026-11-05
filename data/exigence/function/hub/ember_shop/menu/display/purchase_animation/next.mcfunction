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
## FIREWORKS
# Felt delayed, so -2 ticks out from finish
execute if score #temp Temp matches 2 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{\
explosions:[{shape:"large_ball",colors:[1502427],fade_colors:[1502427],has_trail:false,has_twinkle:false}]\
}}}}

#====================================================================================================
## LIGHTNING
# Lightning circle testing
#execute positioned ~6.4 ~4.5 ~ run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/circle_2
execute positioned ~6.4 ~4.5 ~ as @e[type=minecraft:block_display,tag=lightning,distance=..10] run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/lightning_tick
execute positioned ~6.4 ~4.5 ~ run kill @e[type=minecraft:block_display,tag=lightning,distance=..10,scores={Random=..0}]

# Unless we are in the final stage, spawn new lightnings based on progress:
execute if score #temp Temp matches 20.. run function exigence:hub/ember_shop/menu/display/purchase_animation/private/lightning_pacer

#execute if score seconds.cooldown tick_counter matches 1 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/try_spawn_lightning
#execute if score seconds.cooldown tick_counter matches 6 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/try_spawn_lightning
#execute if score seconds.cooldown tick_counter matches 11 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/try_spawn_lightning
#execute if score seconds.cooldown tick_counter matches 16 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/try_spawn_lightning

#====================================================================================================
## FINISH
execute if score shop.purchase_animation ember_shop >= shop.animation_duration ember_shop run function exigence:hub/ember_shop/menu/display/purchase_animation/finish
