# Show details

## CONSTRAINTS
#   AS/AT display

#====================================================================================================

execute positioned ^ ^0.26 ^0.0425 run function exigence:hub/predungeon/menu/display/level_chooser/calls/hover/summon_name
execute if entity @s[tag=LevelChooserDisplayFG,tag=A] positioned ^ ^-0.36 ^0.0425 run function exigence:hub/predungeon/menu/display/level_chooser/calls/hover/summon_locked_reason
execute if entity @s[tag=LevelChooserDisplayFG,tag=B] positioned ^ ^-0.38 ^0.0425 run function exigence:hub/predungeon/menu/display/level_chooser/calls/hover/summon_locked_reason