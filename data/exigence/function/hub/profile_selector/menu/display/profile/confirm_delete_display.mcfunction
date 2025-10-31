# Finish the delete step, with effects

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item

#=============================================================================================================

# Effects
#execute at @s run playsound minecraft:entity.zombie.break_wooden_door block @p[distance=..24] ~ ~ ~ 0.6 1.3
execute at @s run playsound minecraft:block.conduit.deactivate block @p[distance=..24] ~ ~ ~ 1.0 1.0
$execute at @s run particle item{item:{id:"$(id)"}} ~ ~ ~0.1 0.2 0.2 0.0 0.02 15

# Wipe out slot
function exigence:hub/profile_selector/menu/display/profile/set_blank

# Un/rehover for display entities (if currently hovering)
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/unhover with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/hover with entity @s item.components."minecraft:custom_data"