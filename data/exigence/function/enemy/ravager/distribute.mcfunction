# Only designed to be called by distribute_ravagers or redistribute_ravagers

## CONSTRAINTS
#   AS Ravager

#====================================================================================================

# Pick one random MenaceNode that does not have tag "Ravagered" and tp to it
execute if score @s game.entity.object_level matches 1 run teleport @s @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,scores={node.property.object_level=1},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 2 run teleport @s @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,scores={node.property.object_level=2},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 3 run teleport @s @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:armor_stand,scores={node.property.object_level=3},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 4 run teleport @s @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,scores={node.property.object_level=4},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]

# Mark the nearest 6 MenaceNodes as Ravagered.
execute at @s as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,distance=..64,sort=nearest,limit=6] run tag @s add Ravagered

# Remove tags if applicable
tag @s remove ReDistribute
tag @s remove Distribute
