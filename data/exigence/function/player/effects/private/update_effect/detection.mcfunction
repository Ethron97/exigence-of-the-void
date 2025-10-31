## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.detection matches 5 run scoreboard players add et.AddingTime game.effect_temp 600

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Add added time to current
scoreboard players operation @s game.player.effects.detection += et.AddingTime game.effect_temp

# Cap time (if set)
scoreboard players operation @s game.player.effects.detection > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.detection
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get @s game.player.mod.detection
data modify storage exigence:player_effects effect set value "hero_of_the_village"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
