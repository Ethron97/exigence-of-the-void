# Called by misc/tick

## CONSTRAINTS
#   IN exigence:hub
#   AT 0 153 0

#====================================================================================================

execute in exigence:hub positioned 0 153 0 as @e[distance=..1,type=marker,tag=RoomNode] run function exigence:room/node/tick
