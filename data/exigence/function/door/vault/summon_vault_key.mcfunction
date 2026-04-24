# Called by :treasure/node/drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
#$say (D3) Summon $(vault_name) key

# Summon a new item
$summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:$(vault_name)_armor_trim_smithing_template",count:1,components:\
{"minecraft:custom_name":'"$(vault_name)"',"minecraft:max_stack_size":1,"minecraft:custom_data":{vault_key_summoned:"true"}\
,"minecraft:custom_model_data":{"strings":["vault_key"]}}},Tags:["NewVaultKey","VaultKey","Vault_$(vault_name)","Treasure","Key"]}

# Copy level
scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Handle data
execute as @e[type=minecraft:item,tag=NewVaultKey,distance=..1] at @s run function exigence:door/vault/summon_vault_key_data
