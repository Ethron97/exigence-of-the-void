# Removes text displays with the same IDID

## CONSTRAINTS
#   AS profile display to unhover

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#====================================================================================================

say Remove stpe tedetails

$execute at @s run kill @e[type=minecraft:text_display,scores={IDID=$(idid)},tag=StepDetails,distance=..16]
