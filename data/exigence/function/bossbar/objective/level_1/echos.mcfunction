# Add icon if this echo is not picked up yet

## CONSTRAINTS
#   AS/AT echo waypoint

#====================================================================================================

data modify storage exigence:objective level_1 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"white"}]

#scoreboard players set #temp Temp 0
#execute if entity @e[type=minecraft:item,distance=..1,tag=EchoShard] run scoreboard players set #temp Temp 1

# If echo is still here AND player has reached this level, mark white
#execute if score #temp Temp matches 1 run data modify storage exigence:objective level_1 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"white"}]

# If echo is not here, mark green
#execute if score #temp Temp matches 0 run data modify storage exigence:objective level_1 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"green"}]
