# Check if player has too many consumables

## CONSTRAINTS
#   AS player

## OUTPUT
#   #predungeon_validate_player Temp - Flattened to 0 if this player invalid

#====================================================================================================

# Check if wearing artifact leggings
scoreboard players set #artifact_limit Temp 1
execute if predicate exigence:equipment/pants/artifact run scoreboard players set #artifact_limit Temp 2

# Get artifacts count
execute store result score #temp Temp run clear @s #exigence:artifacts 0

# Compare
execute if score #temp Temp <= #artifact_limit Temp run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ You have too many artifacts! (",color:"red"}\
,{score:{name:"#temp",objective:"Temp"}},{text:"/",color:"red"},{score:{name:"#artifact_limit",objective:"Temp"}},{text:")",color:"red"}]
execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.4

# Message other players
tellraw @a[distance=..32,tag=Predungeon,tag=!LocalLocal] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" has too many artifacts!",color:"red"}]

tag @s remove LocalLocal