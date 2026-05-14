# Create echo compass for this echo node

## CONSTRAINTS
#   AS echo node

## INPUT
#   INT echo_id
#   INT level

#====================================================================================================

$execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3) Spawn compass on level $(level). ID: $(echo_id)

execute store result storage exigence:compass x int 1 run data get entity @s Pos[0]
execute store result storage exigence:compass y int 1 run data get entity @s Pos[1]
execute store result storage exigence:compass z int 1 run data get entity @s Pos[2]
$data modify storage exigence:compass name set value [{text:"Level $(level) Echo Locator",color:"blue",italic:false}]
data modify storage exigence:compass lore set value []
data modify storage exigence:compass lore append value [{text:"Points towards the objective",color:"gray",italic:false}]
data modify storage exigence:compass lore append value [{text:"(Soulbound)",color:"dark_gray",italic:false}]
$data modify storage exigence:compass echo_id set value $(echo_id)

# Set dimension based on if tutorial or not tutorial
data modify storage exigence:compass dimension set value 'minecraft:overworld'
execute if score @s node.property.object_level matches 10 run data modify storage exigence:compass dimension set value 'exigence:tutorial'
