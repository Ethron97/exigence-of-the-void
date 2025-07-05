## CONSTRAINTS
#   AS ArmorStand (EchoNode)

#==========================================================================================================

# Spawn echo item
execute at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:music_disc_relic",count:1,components:{"minecraft:custom_model_data":{"strings":["echo_shard"]}}},Tags:["NewEcho","EchoShard"],Invulnerable:1b}

# Save objectlevel
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Add data
execute at @s as @e[distance=..1,type=item,tag=NewEcho] run function exigence:ember/node/summon_echo_item_data
