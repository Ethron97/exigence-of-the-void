## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Cap time (if set)
scoreboard players operation et.AddingTime game.effect_temp > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get et.AddingTime game.effect_temp
$data modify storage exigence:player_effects amplifier set value $(amplifier)

# Sunplate changes from Abosption to Max Health (DEPRECATED)
#execute if score @s game.player.mod.sun_plate matches 5 run data modify storage exigence:player_effects effect set value "health_boost"
#execute unless score @s game.player.mod.sun_plate matches 5 run data modify storage exigence:player_effects effect set value "absorption"
data modify storage exigence:player_effects effect set value "absorption"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Heal up the health-boosted if they get it (DEPRECATED)
#$execute if score @s game.player.mod.sun_plate matches 5 run effect give @s instant_health 1 $(amplifier)
