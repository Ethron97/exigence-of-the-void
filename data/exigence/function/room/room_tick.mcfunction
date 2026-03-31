# Called by misc/tick

## CONSTRAINTS
#   IN exigence:hub
#   AT 0 153 0

#====================================================================================================

execute in exigence:hub positioned 0 153 0 as @e[type=marker,tag=RoomNode,distance=..1] run function exigence:room/node/tick
