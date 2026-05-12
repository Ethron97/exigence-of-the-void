# Handles interaction with vault door handles (on right click)

## CONSTRAINTS
#   AS/AT interaction

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Vault door handle interaction 

## VERIFY HOLDING KEY
# Return if player is not holding a trim template
execute on target unless items entity @s weapon.mainhand #exigence:vault_key run tellraw @s [{text:"🔒",color:"gold"},{text:" The vault is sealed with an ancient rune...",color:"red"}]
execute on target unless items entity @s weapon.mainhand #exigence:vault_key run return run playsound minecraft:block.copper_grate.break ambient @a ~ ~ ~ 0.5 0.6
#----------------------------------------------------------------------------------------------------

## CHECK MATCH
# Call sub function that matches the trim the player is holding
data modify storage exigence:door vault_interacting set from entity @n[type=minecraft:item_display,tag=VaultHandle,distance=..1] item.components."minecraft:custom_data".vault

# Try to modify it fom player hand and store success
#   NOTE: 0 == key matches, 1 == key does not match
execute on target store success storage exigence:door vault_not_match int 1 run data modify storage exigence:door vault_interacting set from entity @s SelectedItem.components."minecraft:custom_data".vault

## REJECT KEY
# Return if holding key does not match the door handle
execute on target if data storage exigence:door {vault_not_match:1} run tellraw @s [{text:"🔒",color:"gold"},{text:" That key does not fit!",color:"red"}]
execute if data storage exigence:door {vault_not_match:1} run return run playsound minecraft:block.decorated_pot.place ambient @a ~ ~ ~ 0.5 0.6
#----------------------------------------------------------------------------------------------------

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Key matches

## SUCCESSFUL KEY
# Decrement item in mainhand
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand exigence:decrement

# Set rotation to something random
execute store result storage exigence:door rot0 float 1 run random value -180..179
execute store result storage exigence:door rot1 float 1 run random value -180..179

# Copy data to storage
data modify storage exigence:door vault set from entity @n[type=minecraft:item_display,tag=VaultHandle,distance=..1] item.components."minecraft:custom_data".vault

# Call successsful insert function
execute on target at @s as @n[type=minecraft:item_display,tag=VaultHandle,distance=..10] run function exigence:door/vault/_common/insert_key with storage exigence:door

# Call player open functions (data, advancement)
execute on target run function exigence:door/vault/_common/award_player with storage exigence:door

# Kill the vault handle interaction (we no longer need it)
kill @s[type=minecraft:interaction]