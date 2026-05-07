# Generate vault key on level 1

## CONSTRAINTS
#   AS vault node

#====================================================================================================

# If this key is picked up, return
execute if entity @s[tag=PickedUp] run return run say Skipped because it has already been picked up
#----------------------------------------------------------------------------------------------------

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Generate vault key (level 1)

# LEVEL 1
data modify storage exigence:treasure_drop vault_name set from entity @s data.custom_data.vault_name

# Increase scores
# TODO move to profile node
scoreboard players add @a[tag=ActivePlayer] profile.data.vaults.cr.vault_keys_spawned 1

# Drop key at random treasure node
execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=!KeyBlacklist\
,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:door/vault/summon_vault_key"}
