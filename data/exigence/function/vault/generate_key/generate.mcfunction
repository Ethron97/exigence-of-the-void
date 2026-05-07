# Generate key on all levels

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Dropping vault keys

# Pick which vault to drop a key for
#   Nodes are disqualified if the vault has been opened, or the key has been picked up already

# If the key has been picked up, it still has a chance to be "chosen" up until the point the vault is opened.
# This discourages players from hoarding all the keys and opening them later. THe earlier you open a vault
# , the higher the chance of a new vault key spawning.

execute if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker\
,scores={node.property.object_level=1},tag=VaultNode,tag=!Opened,sort=random,limit=1] run function exigence:vault/generate_key/level_1

execute if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker\
,scores={node.property.object_level=2},tag=VaultNode,tag=!Opened,sort=random,limit=1] run function exigence:vault/generate_key/level_2

execute if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker\
,scores={node.property.object_level=3},tag=VaultNode,tag=!Opened,sort=random,limit=1] run function exigence:vault/generate_key/level_3

execute if score game.difficulty game.state matches 4.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker\
,scores={node.property.object_level=3},tag=VaultNode,tag=!Opened,sort=random,limit=1] run function exigence:vault/generate_key/level_4
