# Actually set up the vault door handle

## CONSTRAINTS
#   AT exact position

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Setup handle (coast)

# Get nearby vault score
scoreboard players operation #compare node.id = @n[type=minecraft:marker,tag=VaultNode,tag=Vault_coast,distance=..5] node.id

# Summon new item display
summon minecraft:item_display ~ ~ ~ {Tags:["VaultHandle","NewVaultHandle","Vault_coast"],Rotation:[90.0f,90.0f],CustomName:{text:"ItemDisplay | VaultHandle-Coast",color:"gold"},billboard:"fixed",\
item:{id:"minecraft:coast_armor_trim_smithing_template",count:1,components:{"minecraft:custom_data":{vault:'coast'},"minecraft:custom_model_data":{"strings":["vault_lock"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},brightness:{sky:7,block:7}}

# Summon new interaction
summon interaction ~ ~-0.5 ~ {Tags:["VaultHandle","NewVaultHandle"],response:1b}

# Copy score from coast node
scoreboard players operation @e[tag=NewVaultHandle,distance=..1] game.vault.handle.id = #compare node.id

# Remove local tag
tag @e[tag=NewVaultHandle,distance=..1] remove NewVaultHandle
