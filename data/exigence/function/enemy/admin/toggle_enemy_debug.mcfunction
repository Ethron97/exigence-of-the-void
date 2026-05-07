# Toggle enemy debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.enemy debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.enemy debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.enemy debug matches 1 run say Turning enemy debug off
execute if score toggle.enemy debug matches 0 run say Turning enemy debug on

# Update actual value
scoreboard players operation toggle.enemy debug = #temp debug

# 2. Run commands depending on debug state
# Toggle glowing
$execute if score toggle.enemy debug matches 1 run effect give @e[type=#exigence:enemy,scores={game.entity.object_level=$(levels)}] minecraft:glowing infinite 0 true
execute if score toggle.enemy debug matches 0 run effect clear @e[type=#exigence:enemy] minecraft:glowing
