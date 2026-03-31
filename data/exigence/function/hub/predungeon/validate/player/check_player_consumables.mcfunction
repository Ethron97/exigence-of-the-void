# Check if player has too many consumables

## CONSTRAINTS
#   AS player

## OUTPUT
#   #predungeon_validate_player Temp - Flattened to 0 if this player invalid

#====================================================================================================

# Refresh consumable limit
function exigence:player/utility/calculate_item_limit

# Refresh consumable count
execute store result score #consumables Temp run clear @s #exigence:consumable 0

# Compare
execute if score #consumables Temp <= @s hub.player.consumable_limit run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ You have too many consumable items! (",color:"red"}\
,{score:{name:"#consumables",objective:"Temp"}},{text:"/",color:"red"},{score:{name:"@s",objective:"hub.player.consumable_limit"}},{text:")",color:"red"}]
#execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.4

# Message other players
tellraw @a[tag=Predungeon,tag=!LocalLocal,distance=..32] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" has too many consumable items!",color:"red"}]

tag @s remove LocalLocal