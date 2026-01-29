# Called from try_load_to_waiting

## CONSTRAINTS
#   AS anything? Profile note, though not enforced.

## INPUT
#   SCORE #room_type
#   SCORE #room_id

#====================================================================================================

say Load chests to waiting

# Call triage function based on room type code
execute if score #room_type Temp matches 10 run say Loading chests to waiting PROFILE SELECTOR
execute if score #room_type Temp matches 10 in exigence:hub positioned 999 129 6 as @e[distance=..140,type=marker,tag=ProfileSelectorNode] \
if score @s hub.entity.room_id = #room_id Temp at @s run function exigence:hub/profile_selector/load/load_chests

# ...