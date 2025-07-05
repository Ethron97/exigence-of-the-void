## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_jump += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_jump > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_jump
data modify storage exigence:player_effects amplifier set value 1
data modify storage exigence:player_effects effect set value "jump_boost"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Trigger QoL check for step height
function exigence:player/attributes/step_height
