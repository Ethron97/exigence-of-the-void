# Warden effect tick

## CONSTRAINTS
#   AS Warden

#==================================================================================================================

## Warden
# Store anger toward first entity in list (which should always be the player)
execute store result score @s Warden run data get entity @s anger.suspects[0].anger 1

# Update warden active level
execute at @s if predicate exigence:level/1 run scoreboard players set @s ActiveLevel 1
execute at @s if predicate exigence:level/2 run scoreboard players set @s ActiveLevel 2
execute at @s if predicate exigence:level/3 run scoreboard players set @s ActiveLevel 3
execute at @s if predicate exigence:level/4 run scoreboard players set @s ActiveLevel 4

# Update anger 1/sec
execute if score SecondsCooldown TickCounter matches 3 at @s run function exigence:enemy/warden/anger_update
