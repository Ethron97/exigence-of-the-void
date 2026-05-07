# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT vault node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=VaultNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED VAULT NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!VaultNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-VAULT NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=VaultNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT VAULT NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","VaultNode"],CustomName:{text:"Marker | VaultNode",color:"gold",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VaultNode <1>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VaultNode <2>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VaultNode <3>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VaultNode <4>",color:"gold",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Treasure @s

# Copy node id and save to data
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.id = @s node.id
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.node_id int 1 run scoreboard players get @s node.id

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Copy tags
execute if entity @s[tag=Vault_host] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_host
execute if entity @s[tag=Vault_wayfinder] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_wayfinder
execute if entity @s[tag=Vault_shaper] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_shaper
execute if entity @s[tag=Vault_raiser] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_raiser
execute if entity @s[tag=Vault_tide] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_tide
execute if entity @s[tag=Vault_rib] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_rib

execute if entity @s[tag=Vault_snout] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_snout
execute if entity @s[tag=Vault_wild] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_wild
execute if entity @s[tag=Vault_sentry] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_sentry
execute if entity @s[tag=Vault_ward] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_ward
execute if entity @s[tag=Vault_coast] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_coast
execute if entity @s[tag=Vault_vex] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_vex

execute if entity @s[tag=Vault_bolt] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_bolt
execute if entity @s[tag=Vault_dune] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_dune
execute if entity @s[tag=Vault_eye] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_eye
execute if entity @s[tag=Vault_flow] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_flow
execute if entity @s[tag=Vault_silence] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_silence
execute if entity @s[tag=Vault_spire] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Vault_spire

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode
