# Called from advancements/listener/pickup/vault_key
#say Actually pick up vault key

## CONSTRAINTS
#   AS player

#==================================================================================================

# Delete the trim from their inventory
clear @s #exigence:trim_templates[custom_data={vault_key_summoned:"true"}] 1

$execute as @s run function exigence:door/vault/$(key_name)/give_key

# Add picked up tag to corresponding vault node so it knows not to spawn any more of this key
$execute as @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_$(key_name)] run tag @s add PickedUp
$execute as @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_$(key_name)] run scoreboard players add @s vaultPickedUp 1
scoreboard players add @s cr_vaultKeysPickedUp 1
scoreboard players add @s t_vaultKeysPickedUp 1

# Kill any other duplicates of this vault key
$kill @e[type=minecraft:item,tag=Vault_$(key_name),tag=!VaultNode]

# Start key detection recursion (SWITCHED TO TICK)
#$function exigence:door/vault/$(key_name)/detect_vault_key
