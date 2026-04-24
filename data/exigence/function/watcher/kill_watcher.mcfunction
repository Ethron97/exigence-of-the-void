# Execute as watcher being killed

# Trigger all remaining hazards on this level
$execute as @e[type=minecraft:marker,scores={node.property.object_level=$(level)},tag=HazardNode,tag=Active] run function exigence:hazard/node/trigger

# Alert ravagers once
#$execute as @e[type=minecraft:ravager,scores={game.entity.object_level=$(level)}] run function exigence:enemy/aggro_enemy

# Add 3 menace
data modify storage exigence:menace amount set value 3
data modify storage exigence:menace from set value 'other'
function exigence:menace/trigger/from_ with storage exigence:menace
