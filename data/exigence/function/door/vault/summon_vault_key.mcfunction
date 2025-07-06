## CONSTRAINTS
# AS vault key dropper (treasure node)
#   AT location

#========================================================================================================

# DEBUG
#$say Summon $(vault_name) key

# Summon a new item
$summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:$(vault_name)_armor_trim_smithing_template",count:1,components:\
{"minecraft:custom_name":'"$(vault_name)"',"minecraft:max_stack_size":1,"minecraft:custom_data":{vault_key_summoned:"true"}\
,"minecraft:custom_model_data":{"strings":["vault_key"]}}},Tags:["NewVaultKey","VaultKey","Vault_$(vault_name)","Treasure","Key"]}

# Copy level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Handle data
execute as @e[distance=..1,type=item,tag=NewVaultKey] at @s run function exigence:door/vault/summon_vault_key_data
