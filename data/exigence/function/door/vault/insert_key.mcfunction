# Called from handle_interact if key matches the door handle

## CONSTRAINTS
#   AS item_display - vault handle

## INPUT
#   STR vault - valid vault name
#   FLOAT rot0
#   FLOAT rot1

#======================================================================================================

# DEBUG
#$say inserting $(vault) key

# Playsound
execute at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 1 1

# Add "Opening" tag to player opening so we can reference later
$tag @a[tag=HandleInteracting] add Opening$(vault)

# Summon new item_display with the key, will need to teleport
#   Teleport on player, teleport with interpolating to the handle
$execute at @a[tag=HandleInteracting] run summon item_display ^ ^1 ^0.5 {teleport_duration:20,Rotation:[$(rot0).0f,$(rot1).0f],billboard:"fixed",Tags:["VaultHandleKey","NewVaultHandleKey"],item:{id:"minecraft:$(vault)_armor_trim_smithing_template",count:1,"components":{"minecraft:custom_model_data":{"strings":["vault_key"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
#$say Rotation:[$(rot0),$(rot1)]

# Interpolate to handle
execute at @s run teleport @e[type=minecraft:item_display,tag=NewVaultHandleKey] ^ ^ ^-0.1
data modify entity @e[type=minecraft:item_display,tag=NewVaultHandleKey,limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:item_display,tag=NewVaultHandleKey,limit=1] teleport_duration set value 30

# Copy vault handle ID (#compare was set from previous function)
scoreboard players operation @e[type=minecraft:item_display,tag=NewVaultHandleKey] game.vault.handle.id = #compare game.vault.handle.id

# Initialize score
scoreboard players set @s InsertingKey 83

# Remove local tag
tag @e[type=minecraft:item_display,tag=NewVaultHandleKey] remove NewVaultHandleKey

# Call function
schedule function exigence:door/vault/opening_vault 1t
