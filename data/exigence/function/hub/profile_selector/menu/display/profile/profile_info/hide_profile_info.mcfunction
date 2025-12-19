# Removes text displays with the same IDID

## CONSTRAINTS
#   AS profile display

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

$execute at @s run kill @e[distance=..16,type=minecraft:text_display,tag=ProfileDetails,scores={IDID=$(idid)}]
$execute at @s run kill @e[distance=..16,type=minecraft:block_display,tag=ProfileDetails,scores={IDID=$(idid)}]
