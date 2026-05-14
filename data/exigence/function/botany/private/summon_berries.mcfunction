# Summon berries from random amount

## CONSTRAINTS
#   AS berry node
#   AT position
#   DATA set in exigence:berry:
#       INT random_drop

#=================================================================================================

# If tutorial, always summon normal berries
execute if score @s node.property.object_level matches 10 run return run function exigence:botany/private/summon_berries_normal with storage exigence:berry
#-------------------------------------------------------------------------------------------------

# Check for ambrosia
execute if score mod.ambrosia game.modifiers matches 0 run function exigence:botany/private/summon_berries_normal with storage exigence:berry

# If ambrosia:
execute if score mod.ambrosia game.modifiers matches 1.. run function exigence:botany/private/summon_berries_ambrosia with storage exigence:berry
