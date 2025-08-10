# Deactivate all ember nodes
tag @e[type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] remove Active
tag @e[type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] remove Triggered

execute as @e[type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] run function exigence:altar/node/activate