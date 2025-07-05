# Store current level over old temp current level. If changed, success = 1. If failed, it means old current level = new current level
execute store success storage temp success int 1 run execute store result storage temp current_level int 1 run data get storage exigence:debug current_level
# If current_level changed reset NodeCounter
execute if data storage temp {success:1} run scoreboard players reset * NodeCounter


# Scoreboard double buffer
$scoreboard players set #L$(current_level)_MenaceNodes NodeCounter 0
$scoreboard players set #L$(current_level)_HazardNodes NodeCounter 0
$scoreboard players set #L$(current_level)_VarianceNodes NodeCounter 0
$scoreboard players set #L$(current_level)_BerryNodes NodeCounter 0
$scoreboard players set #L$(current_level)_EchoNodes NodeCounter 0
$scoreboard players set #L$(current_level)_EmberNodes NodeCounter 0
$scoreboard players set #L$(current_level)_TreasureNodes NodeCounter 0
$scoreboard players set #L$(current_level)_AltarNodes NodeCounter 0
$scoreboard players set #L$(current_level)_BellNodes NodeCounter 0

# Swap buffers
$execute as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_MenaceNodes NodeCounter 1
$scoreboard players operation L$(current_level)_MenaceNodes NodeCounter = #L$(current_level)_MenaceNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_HazardNodes NodeCounter 1
$scoreboard players operation L$(current_level)_HazardNodes NodeCounter = #L$(current_level)_HazardNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=VarianceNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_VarianceNode NodeCounter 1
$scoreboard players operation L$(current_level)_VarianceNodes NodeCounter = #L$(current_level)_VarianceNode NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_BerryNodes NodeCounter 1
$scoreboard players operation L$(current_level)_BerryNodes NodeCounter = #L$(current_level)_BerryNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_EchoNodes NodeCounter 1
$scoreboard players operation L$(current_level)_EchoNodes NodeCounter = #L$(current_level)_EchoNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=EmberNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_EmberNodes NodeCounter 1
$scoreboard players operation L$(current_level)_EmberNodes NodeCounter = #L$(current_level)_EmberNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_TreasureNodes NodeCounter 1
$scoreboard players operation L$(current_level)_TreasureNodes NodeCounter = #L$(current_level)_TreasureNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=!VaultAltar,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_AltarNodes NodeCounter 1
$scoreboard players operation L$(current_level)_AltarNodes NodeCounter = #L$(current_level)_AltarNodes NodeCounter

$execute as @e[type=minecraft:armor_stand,tag=BellNode,scores={ObjectLevel=$(current_level)}] run scoreboard players add #L$(current_level)_BellNodes NodeCounter 1
$scoreboard players operation L$(current_level)_BellNodes NodeCounter = #L$(current_level)_BellNodes NodeCounter