# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {ember:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {ember:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {ember:1} run say Turning ember debug off
execute if data storage exigence:debug {ember:0} run say Turning ember debug on

# Update actual value
data modify storage exigence:debug ember set from storage temp debug


# 2. Run commands depending on debug state
# Glow ember items on the ground
$execute if data storage exigence:debug {ember:1} as @e[type=minecraft:item,tag=Ember,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {ember:0} as @e[type=minecraft:item,tag=Ember] run data modify entity @s Glowing set value false
