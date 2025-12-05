# Removes text displays with the same IDID

## CONSTRAINTS
#   AS profile display

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

$execute at @s run kill @e[distance=..5,tag=CoopPlayerDisplay,scores={IDID=$(idid)}]