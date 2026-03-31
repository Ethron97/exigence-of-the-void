# Called by game ambient_tick

#====================================================================================================

execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0..},tag=AltarNode,tag=!ChooseLock] at @s if entity @a[scores={dead=0},tag=ActivePlayer,distance=..24] run function exigence:altar/node/ambient
