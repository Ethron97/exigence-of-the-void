# Check if player has multiple pairs of leggings

## CONSTRAINTS
#   AS player

#====================================================================================================

# Get leggings count
execute store result score #temp Temp run clear @s #exigence:leggings 0

# Compare
execute if score #temp Temp matches ..1 run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ You have too many leggings! (",color:"red"}\
,{score:{name:"#temp",objective:"Temp"}},{text:"/1)",color:"red"}]
execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.5

# Message other players
tellraw @a[distance=..32,tag=Predungeon,tag=!LocalLocal] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" has too many leggings in their inventory!",color:"red"}]

tag @s remove LocalLocal
