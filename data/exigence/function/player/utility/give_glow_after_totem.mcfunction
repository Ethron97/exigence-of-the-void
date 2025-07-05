# Using totem of undying clears all effects in vanilla. Schedule this one tick after to return it.

## CONSTRAINTS
#   Player must have "GiveGlow" tag

#========================================================================================================

effect give @a[tag=GiveGlow] glowing infinite 0 true

tag @a[tag=GiveGlow] remove GiveGlow
