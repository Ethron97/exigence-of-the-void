# Tick on all markers

## CONSTRAINTS
#   AS/AT marker

#====================================================================================================

## SWITCH
execute if entity @s[tag=BerryNode,tag=Active] run return run function exigence:botany/node/e_tick
execute if entity @s[tag=ExitNode] run return run function exigence:game/exit/node/e_tick
execute if entity @s[tag=RavagerGlass] run return run function exigence:game/other/ravager_glass/update