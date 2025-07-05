# Execute as watcher being killed

# Trigger all remaining hazards on this level
$execute as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=$(level)},tag=Active] run function exigence:hazard/node/trigger

# Alert ravagers once
#$execute as @e[type=minecraft:ravager,scores={ObjectLevel=$(level)}] run function exigence:enemy/aggro_enemy

# Add 3 menace
data modify storage exigence:menace amount set value 3
data modify storage exigence:menace from set value 'Other'
function exigence:menace/trigger/from_ with storage exigence:menace
