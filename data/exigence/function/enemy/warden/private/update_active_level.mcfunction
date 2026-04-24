# Update object level

## CONSTRAINTS
#   AS/AT Warden

#====================================================================================================

## SWITCH
execute if predicate exigence:level/4 run return run scoreboard players set @s game.warden.active_level 4
execute if predicate exigence:level/3 run return run scoreboard players set @s game.warden.active_level 3
execute if predicate exigence:level/2 run return run scoreboard players set @s game.warden.active_level 2
execute if predicate exigence:level/1 run return run scoreboard players set @s game.warden.active_level 1