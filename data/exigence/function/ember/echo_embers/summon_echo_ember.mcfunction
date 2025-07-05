## 
say DEPRECATED

# Summon a new ember with tag "NewEmber"
execute as @s at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:soul_campfire",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["1001"]}}},Tags:["NewEmber","Ember"]}

# If being summoned by an EchoNode, make sure the item doesn't despawn.
execute if entity @s[tag=ChosenEchoNode] run data merge entity @e[type=minecraft:item,tag=NewEmber,limit=1] {Age:-32768}

# Add to Ember scoreboard team (for glow color)
execute as @e[type=minecraft:item,tag=NewEmber] run team join Ember @s

# Copy object level
scoreboard players operation @e[type=minecraft:item,tag=NewEmber] ObjectLevel = @s ObjectLevel

# Random drop spread
execute as @e[type=minecraft:item,tag=NewEmber] run function exigence:misc/drop_spread

# Remove "NewEmber" tag
execute as @e[type=minecraft:item,tag=NewEmber] run tag @s remove NewEmber
