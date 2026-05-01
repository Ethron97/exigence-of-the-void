# Called from drop_level_keys

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

#say (D3) Drop temple keys

# Pick treasure node to drop key on
execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_2

# Progress iteration
scoreboard players remove #i Temp 1
execute if score #i Temp matches 1.. run function exigence:treasure/keys/drop_temple_keys
