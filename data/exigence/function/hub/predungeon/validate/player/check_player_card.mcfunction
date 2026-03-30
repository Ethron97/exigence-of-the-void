# Check if player has cards in their inventory

## CONSTRAINTS
#   AS player

## OUTPUT
#   #predungeon_validate_player Temp - Flattened to 0 if this player invalid

#====================================================================================================

# Check for cards
execute store result score #temp Temp run clear @s paper 0

# Compare
execute if score #temp Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ You cannot bring ",color:red},{text:"Cards",color:white},{text:" into the Dungeon!",color:"red"}]
#execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.4

# Message other players
tellraw @a[distance=..32,tag=Predungeon,tag=!LocalLocal] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" has at least 1 ",color:red},{text:"Card",color:white},{text:" in their inventory!",color:"red"}]

tag @s remove LocalLocal