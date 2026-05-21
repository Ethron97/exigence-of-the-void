# Toggle todo debug (enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.todo debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.todo debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.todo debug matches 1 run say Turning todo debug off
execute if score toggle.todo debug matches 0 run say Turning todo debug on

# Update actual value
scoreboard players operation toggle.todo debug = #temp debug


# 2. Run commands depending on debug state

# Modify data of all armorstands with "debug" tag
execute if score toggle.todo debug matches 1 as @e[type=minecraft:armor_stand,tag=TodoNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if score toggle.todo debug matches 0 as @e[type=minecraft:armor_stand,tag=TodoNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}
