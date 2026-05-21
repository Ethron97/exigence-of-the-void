# Tellraw self and other players the number of items you picked up

## CONSTRAINTS
#   AS player

#====================================================================================================

tag @s add LocalTellraw

scoreboard players operation #temp Temp = @s Temp

# Tell self
tellraw @s [{text:" └ Picked up ",color:"gray"},{"score":{"name":"@s","objective":"Temp"},color:"yellow"},{text:" items",color:"gray"}]

# Tell other players
tellraw @a[tag=ActivePlayer,tag=!LocalTellraw] [{text:" └ ",color:"gray"},{selector:"@p[tag=LocalTellraw]",color:"dark_aqua"},{text:" Picked up ",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"yellow"},{text:" items",color:"gray"}]

tag @s remove LocalTellraw