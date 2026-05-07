# Reveal all hidden blocks for one mirror that has not already had this applied

## CONSTRAINTS
#   AS mirror node

#====================================================================================================

# DEBUG
execute if score toggle.mirror debug matches 1 if score debug.level debug matches 3.. run say (D3) Revealing mirror

# Add tag
tag @s add RevealedMirror

# Reveal blocks
execute if entity @s[tag=4wide] run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=four_wide] add Discovered
execute if entity @s[tag=45d] run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=45_degree] add Discovered
execute if entity @s[tag=3wide] run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=three_wide] add Discovered
execute if entity @s[tag=3way] run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=intersection] add Discovered
