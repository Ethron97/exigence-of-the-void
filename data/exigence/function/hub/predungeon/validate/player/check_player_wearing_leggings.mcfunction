# Check if player is wearing their leggings

## CONSTRAINTS
#   AS player, if leggings is in their inventory

#====================================================================================================

# If leggings found, make sure player is wearing one
execute store success score #temp Temp if items entity @s armor.legs *

# Compare
execute if score #temp Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

tag @s add LocalLocal

# If bad, flatten to 0
scoreboard players operation #predungeon_validate_player Temp < 0 number

# Message this player
tellraw @s [{text:"✖ ",color:"red"},{text:"Leggins ",color:"dark_red"},{text:"must be equipped when entering the dungeon!",color:"red"}]

# Message other players
tellraw @a[tag=Predungeon,tag=!LocalLocal,distance=..32] \
[{text:"✖ ",color:red},{selector:"@p[tag=LocalLocal]",color:gold},{text:" is not wearing their leggings! ",color:"red"}]

tag @s remove LocalLocal