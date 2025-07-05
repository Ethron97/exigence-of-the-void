# Summon new item display
summon item_display -321.5 10.5 -249.00 {Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["VaultHandle","NewVaultHandle"],\
item:{id:"minecraft:shaper_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'shaper'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Summon new interaction
summon interaction -321.5 10 -249.00 {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from shaper node
scoreboard players operation @e[tag=NewVaultHandle] VaultHandleID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_shaper,limit=1] NodeID

# Remove local tag
tag @e[tag=NewVaultHandle] remove NewVaultHandle
