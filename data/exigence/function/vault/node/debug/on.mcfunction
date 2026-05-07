# Show debug

## CONSTRAINTS
#   AS/AT vault node

#====================================================================================================

summon minecraft:block_display ~ ~0.3 ~ {Glowing:true,Tags:["DebugDisplay","VaultDebugDisplay"],block_state:{Name:"orange_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]}\
,CustomName:{text:"VaultNode",color:"gold"},CustomNameVisible:true}

# Join team
team join Treasure @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1]

# set value name from tag
execute if entity @s[tag=Vault_host] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_bolt",color:"gold"}
execute if entity @s[tag=Vault_wayfinder] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_wayfinder",color:"gold"}
execute if entity @s[tag=Vault_shaper] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_shaper",color:"gold"}
execute if entity @s[tag=Vault_rasier] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_rasier",color:"gold"}
execute if entity @s[tag=Vault_tide] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_tide",color:"gold"}
execute if entity @s[tag=Vault_rib] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_rib",color:"gold"}

execute if entity @s[tag=Vault_snout] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_snout",color:"gold"}
execute if entity @s[tag=Vault_wild] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_wild",color:"gold"}
execute if entity @s[tag=Vault_sentry] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_sentry",color:"gold"}
execute if entity @s[tag=Vault_ward] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_ward",color:"gold"}
execute if entity @s[tag=Vault_coast] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_coast",color:"gold"}
execute if entity @s[tag=Vault_vex] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_vex",color:"gold"}

execute if entity @s[tag=Vault_bolt] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_bolt",color:"gold"}
execute if entity @s[tag=Vault_dune] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_dune",color:"gold"}
execute if entity @s[tag=Vault_eye] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_eye",color:"gold"}
execute if entity @s[tag=Vault_flow] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_flow",color:"gold"}
execute if entity @s[tag=Vault_silence] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_silence",color:"gold"}
execute if entity @s[tag=Vault_spire] run data modify entity @n[type=minecraft:block_display,tag=VaultDebugDisplay,distance=..1] CustomName set value {text:"Vault_spire",color:"gold"}
