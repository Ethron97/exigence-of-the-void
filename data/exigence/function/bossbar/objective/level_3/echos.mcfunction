# Add icon if this echo is not picked up yet

## CONSTRAINTS
#   AS/AT waypoint

#====================================================================================================

# If player has not reached this level, always mark dark_gray
#execute if score 3.reached game.level_doors matches 0 run return run data modify storage exigence:objective level_3 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"dark_gray"}]
#----------------------------------------------------------------------------------------------------

data modify storage exigence:objective level_3 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"white"}]

#scoreboard players set #temp Temp 0
#execute if entity @e[type=minecraft:item,distance=..1,tag=EchoShard] run scoreboard players set #temp Temp 1

# If echo is still here AND player has reached this level, mark white
#execute if score #temp Temp matches 1 run data modify storage exigence:objective level_3 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"white"}]

# If echo is not here, remove icon
# If echo is not here, mark green
#execute if score #temp Temp matches 0 run data modify storage exigence:objective level_3 append value [{sprite:"minecraft:item/echo_shard",atlas:"items",color:"green"}]
