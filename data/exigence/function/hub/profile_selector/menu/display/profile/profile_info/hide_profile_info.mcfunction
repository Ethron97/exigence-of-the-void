# Removes text displays with the same IDID

## CONSTRAINTS
#   AS profile display

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#====================================================================================================

$execute at @s run kill @e[type=minecraft:text_display,scores={IDID=$(idid)},tag=ProfileDetails,distance=..16]
$execute at @s run kill @e[type=minecraft:block_display,scores={IDID=$(idid)},tag=ProfileDetails,distance=..16]
