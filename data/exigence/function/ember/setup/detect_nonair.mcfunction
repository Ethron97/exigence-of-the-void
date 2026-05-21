# IF function

# Use this:
# /execute at @e[type=minecraft:marker,tag=EchoNode,scores={node.property.object_level=1..4}] if function exigence:ember/setup/detect_nonair run tp @s ~ ~ ~

## CONSTRAINTS
#   AT echo node

#====================================================================================================

# Check for nonair surrounding it
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ air run return 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ air run return 1
execute positioned ~1 ~ ~1 unless block ~ ~ ~ air run return 1
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ air run return 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ air run return 1
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ air run return 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run return 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ air run return 1

# And below it (so it has a solid platform)
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ air run return 1
execute positioned ~1 ~-1 ~ if block ~ ~ ~ air run return 1
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ air run return 1
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ air run return 1
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ air run return 1
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ air run return 1
execute positioned ~ ~-1 ~1 if block ~ ~ ~ air run return 1
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ air run return 1

return 0
