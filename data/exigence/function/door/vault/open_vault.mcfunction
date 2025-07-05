# Executes sub commands for opening vault

## CONSTRAINTS
#   AS player

## INPUT
#   STR vault - must be valid vault name

#======================================================================================================

# DEBUG
#$say Open vault $(vault)

$function exigence:door/vault/$(vault)/open

# Clear tag from player
$tag @s remove Opening$(vault)

# If active player level is 3, tell them to light an altar to pick which trial to do
execute if score @s ActiveLevel matches 3 run tellraw @s [{text:"[!] ",color:"aqua"},{text:"Light an altar to decide your fate",color:"gray"}]

# Door open effects (same for all vault doors)
stopsound @a neutral minecraft:block.beacon.activate

# Sub functions common to the vault node
$execute as @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_$(vault)] at @s run function exigence:door/vault/open_vault_b

# Kill item displays
$execute as @e[type=minecraft:item_display,tag=VaultHandle] if score @s VaultHandleID = #compare VaultHandleID at @s run particle minecraft:item{item:{id:"minecraft:$(vault)_armor_trim_smithing_template"}} ^ ^ ^-0.2 0.3 0.3 0.3 0.1 20
$execute as @e[type=minecraft:item_display,tag=VaultHandleKey] if score @s VaultHandleID = #compare VaultHandleID at @s run particle minecraft:item{item:{id:"minecraft:$(vault)_armor_trim_smithing_template"}} ^ ^ ^-0.2 0.3 0.3 0.3 0.1 20
execute as @e[type=minecraft:item_display,tag=VaultHandle] if score @s VaultHandleID = #compare VaultHandleID run kill @s
execute as @e[type=minecraft:item_display,tag=VaultHandleKey] if score @s VaultHandleID = #compare VaultHandleID run kill @s

# Update scoreboards
scoreboard players add @s t_vaultsOpened 1
scoreboard players add @s cr_vaultsOpened 1

# Give "opened_" advancement
$advancement grant @s only exigence:vault/opened_$(vault)
