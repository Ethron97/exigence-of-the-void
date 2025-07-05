# Handles interaction with vault door handles (on right click)

## CONSTRAINTS
#   AS interaction

#========================================================================================================

# DEBUG
#say Vault door handle interaction 

# Reset local tag(s)
tag @a[tag=HandleInteracting] remove HandleInteracting
tag @e[type=minecraft:item_display,tag=HandleInteracting] remove HandleInteracting

# Add tag to clicker
execute on target run tag @s add HandleInteracting

## VERIFY HOLDING KEY
# Return if player is not holding a trim template
execute unless items entity @a[tag=HandleInteracting] weapon.mainhand #exigence:trim_templates run tellraw @a[tag=HandleInteracting] {text:"The vault is sealed with an ancient rune.",color:"red"}
execute unless items entity @a[tag=HandleInteracting] weapon.mainhand #exigence:trim_templates at @s run playsound minecraft:block.copper_grate.break ambient @a ~ ~ ~ 0.5 0.6
execute unless items entity @a[tag=HandleInteracting] weapon.mainhand #exigence:trim_templates run return 1



## CHECK MATCH
# Mark VaultHandleID for compare
scoreboard players operation #compare VaultHandleID = @s VaultHandleID

# Get item display with item
execute as @e[type=minecraft:item_display,tag=VaultHandle] if score @s VaultHandleID = #compare VaultHandleID run tag @s add HandleInteracting

# Call sub function that matches the trim the player is holding
data modify storage exigence:door vault_interacting set from entity @e[type=minecraft:item_display,tag=VaultHandle,tag=HandleInteracting,limit=1] item.id

# Try to modify it fom player hand and store success
#   NOTE: 0 == key matches, 1 == key does not match
execute store success storage exigence:door vault_not_match int 1 run data modify storage exigence:door vault_interacting set from entity @a[tag=HandleInteracting,limit=1] SelectedItem.id



## REJECT KEY
# Return if holding key does not match the door handle
execute if data storage exigence:door {vault_not_match:1} run tellraw @a[tag=HandleInteracting] {text:"That key does not fit.",color:"red"}
execute if data storage exigence:door {vault_not_match:1} at @s run playsound minecraft:block.copper_bulb.place ambient @a ~ ~ ~ 0.5 0.6
execute if data storage exigence:door {vault_not_match:1} run return 1


#execute if data storage exigence:door {vault_not_match:0} run say Key matches

## SUCCESSFUL KEY
# Kill the vault handle interaction (we no longer need it)
kill @s[type=minecraft:interaction]

# Copy data to storage
data modify storage exigence:door vault set from entity @e[type=minecraft:item_display,tag=HandleInteracting,limit=1] item.components."minecraft:custom_data".vault
# Set rotation to something random
execute store result storage exigence:door rot0 float 1 run random value -180..179
execute store result storage exigence:door rot1 float 1 run random value -180..179

# Decrement item in mainhand
item modify entity @a[tag=HandleInteracting,gamemode=!creative] weapon.mainhand exigence:decrement

# Call successsful insert function
execute as @e[type=minecraft:item_display,tag=HandleInteracting] run function exigence:door/vault/insert_key with storage exigence:door
