# Ardor flame tick

## CONSTRAINTS
#   AS/AT ardor flame/ember (item)

#====================================================================================================

# Ambient particles around the ardor flame/ember
execute if score seconds.cooldown tick_counter matches 3 run function exigence:game/game_tick/e_tick/item/private/flame_particles
execute if score seconds.cooldown tick_counter matches 13 run function exigence:game/game_tick/e_tick/item/private/flame_particles

execute if score @s game.waypoint.revealed_ticks matches 1.. run scoreboard players remove @s game.waypoint.revealed_ticks 1