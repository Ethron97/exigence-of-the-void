# Called from drop_level_keys

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Drop ardor keys

# Pick treasure node to drop key on
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_3

# Progress iteration
scoreboard players remove #i Temp 1
execute if score #i Temp matches 1.. run function exigence:treasure/keys/drop_ardor_keys
