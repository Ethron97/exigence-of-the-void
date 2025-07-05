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

# Cap time (if set)
scoreboard players operation AddingTime EffectTemp > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get AddingTime EffectTemp
$data modify storage exigence:player_effects amplifier set value $(amplifier)

# Sunplate changes from Abosption to Max Health (DEPRECATED)
#execute if score @s mod_SunPlate matches 5 run data modify storage exigence:player_effects effect set value "health_boost"
#execute unless score @s mod_SunPlate matches 5 run data modify storage exigence:player_effects effect set value "absorption"
data modify storage exigence:player_effects effect set value "absorption"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Heal up the health-boosted if they get it (DEPRECATED)
#$execute if score @s mod_SunPlate matches 5 run effect give @s instant_health 1 $(amplifier)
