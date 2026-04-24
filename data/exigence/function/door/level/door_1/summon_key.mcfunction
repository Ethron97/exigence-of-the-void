# Called by :treasure/node/drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
say (D3) Summon key

# Summon a new item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data":{"strings":["level_1_key"]},"minecraft:custom_name":[{text:"⋉ Mirror Mines Key ⋊",color:"gold",italic:false}],"minecraft:custom_data":{key_level:"1"}}},Tags:["NewLevelKey","LevelKey","Key","Level1Key"]}

scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Generic function to handle the rest of the key stuffs
execute as @e[type=minecraft:item,tag=NewLevelKey,distance=..1] run function exigence:treasure/keys/summon_level_key
