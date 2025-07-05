## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
# ...

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_detectthoughts += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_detectthoughts > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_detectthoughts
data modify storage exigence:player_effects amplifier set value 0
data modify storage exigence:player_effects effect set value "bad_omen"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
