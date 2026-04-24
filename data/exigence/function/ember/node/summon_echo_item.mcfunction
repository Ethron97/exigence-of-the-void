# Called by /activate/
#   From both game and tutorial

## CONSTRAINTS
#   AS/AT ArmorStand (EchoNode)

#====================================================================================================

# Spawn echo item
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:music_disc_relic",count:1,components:{"minecraft:custom_model_data":{"strings":["echo_shard"]}}},Tags:["NewEcho","EchoShard"],Invulnerable:1b}

# Save node.property.object_level
scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Add data
execute as @e[type=minecraft:item,tag=NewEcho,distance=..1] run function exigence:ember/node/summon_echo_item_data
