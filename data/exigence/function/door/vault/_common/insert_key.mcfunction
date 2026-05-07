# Called from handle_interact if key matches the door handle

## CONSTRAINTS
#   AS item_display - vault handle
#   AT location (player)

## INPUT
#   STR vault - valid vault name
#   FLOAT rot0
#   FLOAT rot1

#====================================================================================================

# DEBUG
$execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) inserting $(vault) key

## HANDLE
#====================================================================================================
# Playsound
execute at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 1 1

# Initialize score
scoreboard players set @s game.door.inserting_key 83

# Call function
$schedule function exigence:door/vault/$(vault)/opening 1t

# Add "Opening" tag to player opening so we can reference later
# I think this was just for stats and stuf... just do it now
#$tag @p[tag=ActivePlayer,scores={dead=0},distance=..1] add Opening$(vault)
tag @p[tag=Interacting,tag=ActivePlayer,distance=..1] add OpeningVault

## KEY
#====================================================================================================
# Summon new item_display with the key, will need to teleport
#   Teleport on player, teleport with interpolating to the handle
$summon minecraft:item_display ^ ^1 ^0.5 {teleport_duration:20,Rotation:[$(rot0),$(rot1)]\
,billboard:"fixed",Tags:["VaultHandleKey","NewVaultHandleKey","Key_$(vault)"],CustomName:{text:"ItemDisplay | VaultHandleKey"}\
,item:{id:"minecraft:$(vault)_armor_trim_smithing_template",count:1,"components":{"minecraft:custom_model_data":{"strings":["vault_key"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},brightness:{sky:7,block:7}}

# Handle key data
execute at @s as @e[type=minecraft:item_display,tag=NewVaultHandleKey,distance=..10] run function exigence:door/vault/_common/insert_key_data
