# Summon new variance node

## CONSTRAINTS
#   AS player

# INPUT
#   INT max_node_state

#====================================================================================================

scoreboard players set #compare node.property.object_level 0
execute if entity @s[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153] run scoreboard players set #compare node.property.object_level 1
execute if entity @s[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178] run scoreboard players set #compare node.property.object_level 2
execute if entity @s[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132] run scoreboard players set #compare node.property.object_level 3
execute if entity @s[x=-520,y=180,z=-287,dx=340,dy=200,dz=340] run scoreboard players set #compare node.property.object_level 4
# Cancel if not found on a level
execute unless score #compare node.property.object_level matches 1.. run return run say Not on a level?
#----------------------------------------------------------------------------------------------------

# Create a new node with tag "NewMarker"
execute at @s align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Node","VarianceNode"],CustomName:{text:"Marker | VarianceNode"}}

$scoreboard players set #temp Temp $(max_node_state)

# Assign data
execute as @n[type=minecraft:marker,tag=NewMarker,distance=..1] run function exigence:variance/admin/summon_variance_node_data