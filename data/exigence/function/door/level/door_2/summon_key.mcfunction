## CONSTRAINTS
#   AT location

#==========================================================================================================

# DEBUG
#say Summon key

# Summon a new item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data":{"strings":["level_2_key"]},"minecraft:custom_name":[{text:"⋉ Temple of Fervor Key ⋊",color:"gold",italic:false}],"minecraft:custom_data":{key_level:"2"}}},Tags:["NewLevelKey","LevelKey","Key","Level2Key"]}

scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Generic function to handle the rest of the key stuffs
execute as @e[distance=..1,type=item,tag=NewLevelKey] run function exigence:treasure/keys/summon_level_key
