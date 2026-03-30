# Check if player has any thrown items on the ground

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players set #temp Temp 0

tag @s add LocalTagIAm

execute at @s as @e[distance=..50,type=item] on origin if entity @s[tag=LocalTagIAm] run scoreboard players add #temp Temp 1

tag @s remove LocalTagIAm

# Compare
execute if score #temp Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ You left ",color:"red"},{score:{name:"#temp",objective:"Temp"},color:"gold"},{text:" item(s) on the ground!",color:"red"}]
#execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.5

# Message other players
tellraw @a[distance=..32,tag=Predungeon,tag=!LocalLocal] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" left items on the ground!",color:"red"}]

tag @s remove LocalLocal
