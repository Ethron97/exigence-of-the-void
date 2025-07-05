# Summon new item display
summon item_display -395.96875 154.5 -17.5 {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["VaultHandle","NewVaultHandle"],\
item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'bolt'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Summon new interaction
summon interaction -395.96875 154 -17.5 {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from bolt node
scoreboard players operation @e[tag=NewVaultHandle] VaultHandleID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_bolt,limit=1] NodeID

# Remove local tag
tag @e[tag=NewVaultHandle] remove NewVaultHandle
