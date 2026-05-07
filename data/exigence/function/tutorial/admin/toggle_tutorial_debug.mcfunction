# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.tutorial debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.tutorial debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.tutorial debug matches 1 run say Turning tutorial debug off
execute if score toggle.tutorial debug matches 0 run say Turning tutorial debug on

# Update actual value
scoreboard players operation toggle.tutorial debug = #temp debug

# 2. Run commands depending on debug state
execute if score toggle.tutorial debug matches 1 as @e[type=minecraft:armor_stand,scores={node.property.object_level=10}] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if score toggle.tutorial debug matches 0 as @e[type=minecraft:armor_stand,scores={node.property.object_level=10}] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}

execute if score toggle.tutorial debug matches 1 in exigence:tutorial as @e[type=minecraft:marker,tag=TutorialMarker,distance=..1000] run function exigence:tutorial/marker/show
execute if score toggle.tutorial debug matches 0 in exigence:tutorial as @e[type=minecraft:marker,tag=TutorialMarker,distance=..1000] run function exigence:tutorial/marker/hide
