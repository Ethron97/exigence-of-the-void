# Called from advancements/listener/pickup/vault_key

## CONSTRAINTS
#   AS player

#====================================================================================================

$execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Pick up vault key (call: $(key_name))

# Delete the trim from their inventory
clear @s #exigence:trim_templates

$function exigence:door/vault/$(key_name)/give_key

# Add picked up tag to corresponding vault node so it knows not to spawn any more of this key
$execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VaultNode,tag=Vault_$(key_name)] run function exigence:vault/node/picked_up

# Increase player data
scoreboard players add @s profile.data.vaults.cr.vault_keys_picked_up 1

# Kill any other duplicates of this vault key
$kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=Vault_$(key_name),tag=!VaultNode]
