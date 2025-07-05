# Called by vibration

## CONSTRAINTS
#   AT location

## INPUT
#   INT x
#   INT y
#   INT z
#   INT ticks

#==================================================================================================================

$particle minecraft:vibration{arrival_in_ticks:$(ticks),destination:{type:block,pos:[$(x),$(y),$(z)]}} ~ ~ ~ 0 0 0 0 1
