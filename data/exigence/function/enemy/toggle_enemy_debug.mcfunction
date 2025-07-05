# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {enemy:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {enemy:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {enemy:1} run say Turning enemy debug off
execute if data storage exigence:debug {enemy:0} run say Turning enemy debug on

# Update actual value
data modify storage exigence:debug enemy set from storage temp debug


# 2. Run commands depending on debug state
# Toggle glowing
$execute if data storage exigence:debug {enemy:1} run effect give @e[type=#exigence:enemy,scores={ObjectLevel=$(levels)}] minecraft:glowing infinite 0 true
execute if data storage exigence:debug {enemy:0} run effect clear @e[type=#exigence:enemy] minecraft:glowing
