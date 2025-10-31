# Warden effect tick (called every second)

## CONSTRAINTS
#   AS Warden

#==================================================================================================================

## Warden
# Store anger toward first entity in list (which should always be the player)
execute store result score @s game.warden.anger run data get entity @s anger.suspects[0].anger 1

# Update warden active level
execute at @s if predicate exigence:level/1 run scoreboard players set @s game.warden.active_level 1
execute at @s if predicate exigence:level/2 run scoreboard players set @s game.warden.active_level 2
execute at @s if predicate exigence:level/3 run scoreboard players set @s game.warden.active_level 3
execute at @s if predicate exigence:level/4 run scoreboard players set @s game.warden.active_level 4

# Update anger 1/sec
execute if score seconds.cooldown tick_counter matches 3 at @s run function exigence:enemy/warden/anger_update
