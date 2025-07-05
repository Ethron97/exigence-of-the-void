# Iterate key/door animation

# DEBUG
#say Opening vault

# Return if no one has InsertingKey score > 1
#execute unless entity @e[type=minecraft:item_display,scores={InsertingKey=1..}] run say Done opening
execute unless entity @e[type=minecraft:item_display,scores={InsertingKey=1..}] run return 1

# Playsound
execute as @e[type=minecraft:item_display,scores={InsertingKey=60}] at @s run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 0.1

#execute as @e[type=minecraft:item_display,scores={InsertingKey=60}] run data remove entity @e[distance=..1,type=minecraft:item_display,tag=VaultHandleKey,limit=1] teleport_duration

# Interpolate the key perfectly into the slot
execute as @e[type=minecraft:item_display,scores={InsertingKey=60}] at @s run execute as @e[distance=..1,type=minecraft:item_display,tag=VaultHandleKey] run tp @s ^ ^ ^

# Play beacon sound at <20
execute as @e[type=minecraft:item_display,scores={InsertingKey=..30}] at @s run playsound block.beacon.activate neutral @a ~ ~ ~ 1 1.1

# Finish opening
execute as @e[type=minecraft:item_display,scores={InsertingKey=31}] run function exigence:door/vault/opening_vault_finish with entity @s item.components."minecraft:custom_data"

# Remove inserting key
scoreboard players remove @e[type=minecraft:item_display,scores={InsertingKey=1..}] InsertingKey 1

# Iterate
schedule function exigence:door/vault/opening_vault 1t
