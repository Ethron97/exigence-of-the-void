# Toggle ember debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.ember debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.ember debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.ember debug matches 1 run say Turning ember debug off
execute if score toggle.ember debug matches 0 run say Turning ember debug on

# Update actual value
scoreboard players operation toggle.ember debug = #temp debug

# 2. Run commands depending on debug state
# Glow ember items on the ground
$execute if score toggle.ember debug matches 1 as @e[type=minecraft:item,scores={node.property.object_level=$(levels)},tag=Ember] run data modify entity @s Glowing set value true
execute if score toggle.ember debug matches 0 as @e[type=minecraft:item,tag=Ember] run data modify entity @s Glowing set value false
