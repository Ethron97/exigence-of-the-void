# Check if player is wearing their chestplate

## CONSTRAINTS
#   AS player, if chestplate is in their inventory

#====================================================================================================

# If chestplate found, make sure player is wearing one
execute store success score #temp Temp if items entity @s armor.chest *

# Compare
execute if score #temp Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ ",color:"red"},{text:"Chestplates ",color:"dark_red"},{text:"must be equipped when entering the dungeon!",color:"red"}]

# Message other players
tellraw @a[distance=..32,tag=Predungeon,tag=!LocalLocal] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" is not wearing their chestplate! ",color:"red"}]

tag @s remove LocalLocal