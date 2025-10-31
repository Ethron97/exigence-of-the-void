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

# Add added time to current
scoreboard players operation @s game.player.effects.jump8 += et.AddingTime game.effect_temp

# Cap time (if set)
scoreboard players operation @s game.player.effects.jump8 > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.jump8
data modify storage exigence:player_effects amplifier set value 7
data modify storage exigence:player_effects effect set value "jump_boost"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Trigger QoL check for step height
function exigence:player/attributes/step_height
