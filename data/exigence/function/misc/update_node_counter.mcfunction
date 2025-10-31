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
$scoreboard players set #L$(current_level).EmberNodes debug.node_counter 0
$scoreboard players set #L$(current_level).TreasureNodes debug.node_counter 0
$scoreboard players set #L$(current_level).AltarNodes debug.node_counter 0
$scoreboard players set #L$(current_level).BellNodes debug.node_counter 0

# Swap buffers
$execute as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).MenaceNodes debug.node_counter 1
$scoreboard players operation L$(current_level).MenaceNodes debug.node_counter = #L$(current_level).MenaceNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).HazardNodes debug.node_counter 1
$scoreboard players operation L$(current_level).HazardNodes debug.node_counter = #L$(current_level).HazardNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=VarianceNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).VarianceNode debug.node_counter 1
$scoreboard players operation L$(current_level).VarianceNodes debug.node_counter = #L$(current_level).VarianceNode debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).BerryNodes debug.node_counter 1
$scoreboard players operation L$(current_level).BerryNodes debug.node_counter = #L$(current_level).BerryNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).EchoNodes debug.node_counter 1
$scoreboard players operation L$(current_level).EchoNodes debug.node_counter = #L$(current_level).EchoNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=EmberNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).EmberNodes debug.node_counter 1
$scoreboard players operation L$(current_level).EmberNodes debug.node_counter = #L$(current_level).EmberNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).TreasureNodes debug.node_counter 1
$scoreboard players operation L$(current_level).TreasureNodes debug.node_counter = #L$(current_level).TreasureNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=!VaultAltar,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).AltarNodes debug.node_counter 1
$scoreboard players operation L$(current_level).AltarNodes debug.node_counter = #L$(current_level).AltarNodes debug.node_counter

$execute as @e[type=minecraft:armor_stand,tag=BellNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level).BellNodes debug.node_counter 1
$scoreboard players operation L$(current_level).BellNodes debug.node_counter = #L$(current_level).BellNodes debug.node_counter