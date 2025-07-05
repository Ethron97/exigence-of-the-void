# Summon new item display
summon item_display -403.5 65.5 -235.96875 {Rotation:[-180.0f,0.0f],billboard:"fixed",Tags:["VaultHandle","NewVaultHandle"],\
item:{id:"minecraft:wild_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'wild'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Summon new interaction
summon interaction -403.5 65 -235.96875 {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from wild node
scoreboard players operation @e[tag=NewVaultHandle] VaultHandleID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_wild,limit=1] NodeID

# Remove local tag
tag @e[tag=NewVaultHandle] remove NewVaultHandle 
