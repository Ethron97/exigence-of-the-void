# Update / coalesce speed durations across all amplifiers
# Called any time the player gains the speed effect, from /private/update_effect/speed

## CONSTRAINTS
#   AS player
#       player who has speed scores, but does NOT have the speed effect

# In vanilla, players cannot receive a lower level effect if they have a higher one.
# However, if they receive a higher level effect, they KEEP lower level effects, whose durations
# will continue to tick in the background and will return once the higher level effects run out.
# This function will re-apply all effects in order so that they are all tracked on the player.

#=======================================================================================================

# DEBVUG
say Coalescing speed times

effect clear @s speed

# Give speed in ascending order
data modify storage exigence:player_effects effect set value "speed"

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed1
data modify storage exigence:player_effects amplifier set value 0
execute if score @s game.player.effects.speed1 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed2
data modify storage exigence:player_effects amplifier set value 1
execute if score @s game.player.effects.speed2 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed3
data modify storage exigence:player_effects amplifier set value 2
execute if score @s game.player.effects.speed3 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed4
data modify storage exigence:player_effects amplifier set value 3
execute if score @s game.player.effects.speed4 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed5
data modify storage exigence:player_effects amplifier set value 4
execute if score @s game.player.effects.speed5 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed6
data modify storage exigence:player_effects amplifier set value 5
execute if score @s game.player.effects.speed6 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed7
data modify storage exigence:player_effects amplifier set value 6
execute if score @s game.player.effects.speed7 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed8
data modify storage exigence:player_effects amplifier set value 7
execute if score @s game.player.effects.speed8 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed9
data modify storage exigence:player_effects amplifier set value 8
execute if score @s game.player.effects.speed9 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed10
data modify storage exigence:player_effects amplifier set value 9
execute if score @s game.player.effects.speed10 matches 1.. run function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
