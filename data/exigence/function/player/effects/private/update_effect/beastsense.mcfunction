## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score FromCard EffectTemp matches 1 if score @s mod_BeastVision matches 7 run scoreboard players add AddingTime EffectTemp 600

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_beastsense += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_beastsense > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_beastsense
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get @s mod_BeastVision
data modify storage exigence:player_effects effect set value "luck"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Reduce 20
