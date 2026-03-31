# Picks up all items within 32 blocks

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

scoreboard players set #temp Temp 0

# Pickup tag logic prevents double counting if two players are within 32 blocks of same item
execute as @e[type=minecraft:item,tag=!Pickup,distance=..32] run function exigence:cards/helpful_spirits/private/item

# Tellraw actual amount added
tellraw @s [{text:"Picked up ",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"yellow"},{text:" items*",color:"gray"}]
