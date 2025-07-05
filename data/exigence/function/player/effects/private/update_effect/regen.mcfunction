## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score FromCard EffectTemp matches 1 if score @s mod_RegenMantle matches 1 run scoreboard players add AddingTime EffectTemp 100
execute if score FromCard EffectTemp matches 1 if score @s mod_RegenMantle matches 2 run scoreboard players add AddingTime EffectTemp 200
execute if score FromCard EffectTemp matches 1 if score @s mod_RegenMantle matches 3 run scoreboard players add AddingTime EffectTemp 400
execute if score FromCard EffectTemp matches 1 if score @s mod_RegenMantle matches 4 run scoreboard players add AddingTime EffectTemp 600
execute if score FromCard EffectTemp matches 1 if score @s mod_RegenMantle matches 5.. run scoreboard players add AddingTime EffectTemp 1200

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_regen += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_regen > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_regen
data modify storage exigence:player_effects amplifier set value 0
# Mending: upgrade regen I -> regen II
execute if score @s mod_RegenMantle matches 7 run data modify storage exigence:player_effects amplifier set value 1
data modify storage exigence:player_effects effect set value "regeneration"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# If mod_RegenMantle = 6, +1 max health
execute if score @s mod_RegenMantle matches 6 run function exigence:player/attributes/health_boost/increase_health {boost:2}