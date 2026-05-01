# Handles everything related to mirror parkours, hidden blocks, and reflections

## CONSTRAINTS
#   Requires that each active player has their own Reflection, Rotation, and RotationReflection armorstands

#====================================================================================================

# Detect approaches
function exigence:mirror/mirrors/detect_approaches

# For each living player, update their Reflection
execute as @a[scores={dead=0},tag=ActivePlayer] at @s run function exigence:mirror/reflection/player_handle

# Mark reflection in the villager-mirror as the villager reflection
#   IF there is a player in the bookshelf area
execute if entity @a[x=-482,y=61,z=-199,dx=9,dy=5,dz=5,limit=1] run function exigence:mirror/reflection/villager_handle