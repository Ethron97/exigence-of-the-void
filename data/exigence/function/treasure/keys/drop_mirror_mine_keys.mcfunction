# Called from drop_level_keys

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Drop mirror mines keys

# Pick treasure node to drop key on
execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_1

# Progress iteration
scoreboard players remove #i Temp 1
execute if score #i Temp matches 1.. run function exigence:treasure/keys/drop_mirror_mine_keys