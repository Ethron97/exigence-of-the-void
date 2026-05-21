# Called by game_tick e_tick

## CONSTRAINTS
#   AS/AT altar node

#====================================================================================================

execute if entity @s[tag=!ChooseLock] if entity @a[scores={dead=0},tag=ActivePlayer,distance=..24,limit=1] run function exigence:altar/node/ambient