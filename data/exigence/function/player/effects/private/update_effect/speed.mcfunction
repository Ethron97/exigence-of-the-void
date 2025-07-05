## CONSTRAINTS
#   AS player

## INPUT
#   INT level
#   SCORE BaseTime EffectTemp, ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
#   Metabolism = +30 seconds * modifier
scoreboard players set #temp EffectTemp 600
scoreboard players operation #temp EffectTemp *= Metabolism Modifiers
execute if score FromCard EffectTemp matches 1 run scoreboard players operation AddingTime EffectTemp += #temp EffectTemp

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
$scoreboard players operation @s effect_speed$(level) += AddingTime EffectTemp

# Cap time (if set)
$scoreboard players operation @s effect_speed$(level) > SetTime EffectTemp

# Give player effect
$execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_speed$(level)
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get Amplifier EffectTemp
data modify storage exigence:player_effects effect set value "speed"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Update Accelerate modifier for this player
$scoreboard players operation @s mod_Accelerate > $(level) number

# Also increase player's "total speed" score for coalesce checking.
#   effect_speed should always match the player's highest duration
$scoreboard players operation @s effect_speed > @s effect_speed$(level)

# Trigger QoL check for step height
function exigence:player/attributes/step_height