# Store current level over old temp current level. If changed, success = 1. If failed, it means old current level = new current level
execute store success storage temp success int 1 run execute store result storage temp current_level int 1 run data get storage exigence:debug current_level
# If current_level changed reset debug.node_counter
execute if data storage temp {success:1} run scoreboard players reset * debug.node_counter


# Scoreboard double buffer
$scoreboard players set #L$(current_level).MenaceNodes debug.node_counter 0
$scoreboard players set #L$(current_level).HazardNodes debug.node_counter 0
$scoreboard players set #L$(current_level).VarianceNodes debug.node_counter 0
$scoreboard players set #L$(current_level).BerryNodes debug.node_counter 0
$scoreboard players set #L$(current_level).EchoNodes debug.node_counter 0
$scoreboard players set #L$(current_level).TreasureNodes debug.node_counter 0
$scoreboard players set #L$(current_level).AltarNodes debug.node_counter 0
$scoreboard players set #L$(current_level).BellNodes debug.node_counter 0

# Swap buffers
$execute store result score #L$(current_level).MenaceNodes debug.node_counter if entity @e[type=minecraft:armor_stand,scores={node.property.object_level=$(current_level)},tag=MenaceNode]
$scoreboard players operation L$(current_level).MenaceNodes debug.node_counter = #L$(current_level).MenaceNodes debug.node_counter

$execute store result score #L$(current_level).HazardNodes debug.node_counter if entity @e[type=minecraft:marker,scores={node.property.object_level=$(current_level)},tag=HazardNode]
$scoreboard players operation L$(current_level).HazardNodes debug.node_counter = #L$(current_level).HazardNodes debug.node_counter

$execute store result score #L$(current_level).VarianceNodes debug.node_counter if entity @e[type=minecraft:marker,scores={node.property.object_level=$(current_level)},tag=VarianceNode]
$scoreboard players operation L$(current_level).VarianceNodes debug.node_counter = #L$(current_level).VarianceNodes debug.node_counter

$execute store result score #L$(current_level).BerryNodes debug.node_counter if entity @e[type=minecraft:marker,scores={node.property.object_level=$(current_level)},tag=BerryNode]
$scoreboard players operation L$(current_level).BerryNodes debug.node_counter = #L$(current_level).BerryNodes debug.node_counter

$execute store result score #L$(current_level).EchoNodes debug.node_counter if entity @e[type=minecraft:marker,scores={node.property.object_level=$(current_level)},tag=EchoNode]
$scoreboard players operation L$(current_level).EchoNodes debug.node_counter = #L$(current_level).EchoNodes debug.node_counter

$execute store result score #L$(current_level).TreasureNodes debug.node_counter if entity @e[type=minecraft:armor_stand,scores={node.property.object_level=$(current_level)},tag=TreasureNode]
$scoreboard players operation L$(current_level).TreasureNodes debug.node_counter = #L$(current_level).TreasureNodes debug.node_counter

$execute store result score #L$(current_level).AltarNodes debug.node_counter if entity @e[type=minecraft:armor_stand,scores={node.property.object_level=$(current_level)},tag=AltarNode,tag=!VaultAltar]
$scoreboard players operation L$(current_level).AltarNodes debug.node_counter = #L$(current_level).AltarNodes debug.node_counter

$execute store result score #L$(current_level).BellNodes debug.node_counter if entity @e[type=minecraft:armor_stand,scores={node.property.object_level=$(current_level)},tag=BellNode]
$scoreboard players operation L$(current_level).BellNodes debug.node_counter = #L$(current_level).BellNodes debug.node_counter