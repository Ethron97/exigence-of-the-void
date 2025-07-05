# Summon new item display
summon item_display -372.5 3.50 -147.03125 {Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["VaultHandle","NewVaultHandle"],\
item:{id:"minecraft:host_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'host'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Summon new interaction
summon interaction -372.5 3 -147.03125 {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from host node
scoreboard players operation @e[tag=NewVaultHandle] VaultHandleID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_host,limit=1] NodeID

# Remove local tag
tag @e[tag=NewVaultHandle] remove NewVaultHandle
