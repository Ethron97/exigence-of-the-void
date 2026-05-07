# Called by /drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon ardor ember

# Summon a new item
summon minecraft:item ~ ~ ~ {Tags:["Ardor","NewArdorEmber","ArdorEmber","Ember","ETICK"],Age:-32768,Item:{id:"minecraft:ghast_tear",count:1\
,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{ardor_ember:true}}}}

# Store object level
scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Assign data
execute as @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] run function exigence:beacon/private/ardor_ember_data
