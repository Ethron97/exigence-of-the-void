# Called from player_handle if no active mirror was found

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if entity @s[tag=CurrentlyReflecting] run function exigence:mirror/reflection/private/stop_reflecting