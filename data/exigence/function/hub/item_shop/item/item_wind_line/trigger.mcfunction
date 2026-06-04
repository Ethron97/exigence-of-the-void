# Trigger usage of this item in game

## CONSTRAITNS
#   AS/AT player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) trigger wind line item

# Playsound
playsound minecraft:entity.breeze.idle_ground ambient @a ^ ^ ^4 1 1.0
playsound minecraft:entity.breeze.inhale ambient @a ^ ^ ^4 1 1.2

# Particles
particle minecraft:gust ^ ^1.8 ^2 0 0 0 0.1 1
particle minecraft:gust ^ ^1.8 ^5 0 0 0 0.1 1
#particle minecraft:small_gust ^ ^1.8 ^2 1.5 1 1.5 0.1 15
#particle minecraft:small_gust ^ ^1.8 ^5 1.5 1 1.5 0.1 10
#particle minecraft:small_gust ^ ^1.8 ^8 0.5 0.5 0.5 0.1 5
#particle minecraft:small_gust ^ ^1.8 ^11 0.5 0.5 0.5 0.1 5
#particle minecraft:small_gust ^ ^1.8 ^13 0.5 0.5 0.5 0.1 5

execute anchored eyes positioned ^ ^ ^2 run function exigence:hub/item_shop/item/item_wind_line/private/particles

scoreboard players set #collected Temp 0
scoreboard players set #i Temp 200
# Begin functionality loop
execute anchored eyes positioned ^ ^ ^2 run function exigence:hub/item_shop/item/item_wind_line/private/trigger_loop

# Report
tellraw @s [{text:"Storm Rod ",color:"light_purple"},{text:"> Picked up ",color:"gray"},{"score":{"name":"#collected","objective":"Temp"},color:"yellow"},{text:" items",color:"gray"}]
