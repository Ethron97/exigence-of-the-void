# Checks if player is outside level, and applies effects if it has been too long

## CONSTRAINTS
#   AS player

#=============================================================================================================

scoreboard players set @s Temp 1
# Temp 0 = not on a level
execute unless predicate exigence:level/1 unless predicate exigence:level/2 unless predicate exigence:level/3 unless predicate exigence:level/4 run scoreboard players set @s Temp 0

# If not on a level, increase time off level
execute if score @s Temp matches 0 run scoreboard players add @s game.player.time_off_level 1

# If on a level, reset time off level to 0
execute if score @s Temp matches 1 run scoreboard players set @s game.player.time_off_level 0

# If time off level is > 10 seconds, give wither I for a second
execute if score seconds.cooldown tick_counter matches 3 if score @s game.player.time_off_level matches 200.. run effect give @s wither 1 1 true

