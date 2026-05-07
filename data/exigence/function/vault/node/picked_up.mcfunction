# Called when this vault's key was picked up

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Picked up vault key (vault node)

tag @s add PickedUp
tag @s add ETICK

# Add ETICK to interaction (for glow)
execute at @s run tag @n[type=minecraft:interaction,tag=VaultHandle,distance=..1] add ETICK

# Increase node data
scoreboard players add @s node.data.vault.picked_up 1
