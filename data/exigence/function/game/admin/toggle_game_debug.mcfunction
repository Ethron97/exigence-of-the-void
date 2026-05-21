# Toggle game debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.game debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.game debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.game debug matches 1 run say Turning game debug off
execute if score toggle.game debug matches 0 run say Turning game debug on

# Update actual value
scoreboard players operation toggle.game debug = #temp debug

# 2. Run commands depending on debug state
# Modify data of all armorstands with "debug" tag
#  - Glowing
#  - CustomNameVisible
#  - Marker
#execute if data storage exigence:dungeon {debug:1} as @e[type=minecraft:armor_stand,tag=Debug] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
#execute if data storage exigence:dungeon {debug:0} as @e[type=minecraft:armor_stand,tag=Debug] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}

# Toggle glowing
#execute if data storage exigence:dungeon {debug:1} run effect give @e[type=!minecraft:armor_stand,tag=Debug] minecraft:glowing infinite 0 true
#execute if data storage exigence:dungeon {debug:0} run effect clear @e[type=!minecraft:armor_stand,tag=Debug] minecraft:glowing
