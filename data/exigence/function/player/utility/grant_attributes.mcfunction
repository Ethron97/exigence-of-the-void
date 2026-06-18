# Grant attributes from modifiers etc
#   need this so we can recall artifact modifiers after a revive in co-op

## CONSTRAINTS
#   AS player

#====================================================================================================

# Ashes
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ashes'}}}]}] run attribute @s minecraft:movement_efficiency modifier add exigence:ashes 1.0 add_value

# Heavy Core
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'heavy_core'}}}]}] run attribute @s minecraft:knockback_resistance modifier add exigence:heavy_core 1.0 add_value 
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'heavy_core'}}}]}] run attribute @s minecraft:fall_damage_multiplier modifier add exigence:heavy_core 0.2 add_multiplied_base 

# Lucky Feather
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'lucky_feather'}}}]}] run attribute @s minecraft:knockback_resistance modifier add exigence:feather -1 add_value 
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'lucky_feather'}}}]}] run attribute @s minecraft:fall_damage_multiplier modifier add exigence:feather -0.5 add_multiplied_total
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'lucky_feather'}}}]}] run attribute @s minecraft:safe_fall_distance modifier add exigence:feather 5 add_value

# Glistering Melon
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'glistering_melon'}}}]}] run function exigence:player/attributes/health_boost/increase_health {boost:10}
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'glistering_melon'}}}]}] run effect give @s minecraft:instant_health 1 10 true
