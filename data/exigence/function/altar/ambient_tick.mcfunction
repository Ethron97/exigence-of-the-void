# Called by game ambient_tick

#==============================================================================================================

execute as @e[type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=0..},tag=!ChooseLock] at @s if entity @a[distance=..24,tag=ActivePlayer,scores={dead=0}] run function exigence:altar/node/ambient
