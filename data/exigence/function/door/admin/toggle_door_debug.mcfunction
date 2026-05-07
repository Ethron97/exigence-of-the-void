# Toggle door debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.door debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.door debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.door debug matches 1 run say Turning door debug off
execute if score toggle.door debug matches 0 run say Turning door debug on

# Update actual value
scoreboard players operation toggle.door debug = #temp debug

# 2. Run commands depending on debug state
execute if score toggle.door debug matches 1 as @e[type=minecraft:marker,tag=DoorNode] at @s run function exigence:door/level/debug/on
execute if score toggle.door debug matches 0 as @e[type=minecraft:marker,tag=DoorNode] at @s run function exigence:door/level/debug/off
