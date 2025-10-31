# Summon new item display
summon item_display -393.5 77.03125 -252.5 {Rotation:[180.0f,90.0f],billboard:"fixed",Tags:["VaultHandle","NewVaultHandle"],\
item:{id:"minecraft:vex_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'vex'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Summon new interaction
summon interaction -393.5 77.03125 -252.5 {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from vex node
scoreboard players operation @e[tag=NewVaultHandle] game.vault.handle.id = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_vex,limit=1] NodeID

# Remove local tag
tag @e[tag=NewVaultHandle] remove NewVaultHandle
