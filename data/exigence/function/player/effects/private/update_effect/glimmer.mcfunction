## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score FromCard EffectTemp matches 1 if score @s mod_Glimmer matches 6 run scoreboard players add @s effect_glimmer 300
execute if score FromCard EffectTemp matches 1 if score @s mod_Glimmer matches 7 run scoreboard players add @s effect_glimmer 600

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_glimmer += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_glimmer > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_glimmer
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get @s mod_Glimmer
data modify storage exigence:player_effects effect set value "strength"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
