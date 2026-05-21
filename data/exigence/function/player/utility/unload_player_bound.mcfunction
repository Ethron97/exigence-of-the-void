# Unload player bound anything

## CONSTRAINTS
#   tag=PlayerBound

#====================================================================================================
execute unless entity @s[tag=PlayerBound] run return run say Tried to unload (delete) a non-player-bound entity
#----------------------------------------------------------------------------------------------------

function exigence:misc/entity/unload_entity