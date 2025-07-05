# Macro
# function exigence:player/effects/set_effect_time {effect:"",duration:}
# Valid effects: health

## CONSTRAINTS
#   AS player

## INPUT
#   INT amplifier
#   INT duration

#================================================================================================

# DEBUG
#$say Set effect health $(duration) $(amplifier)

# Setup scores
scoreboard players set FromCard EffectTemp 0
scoreboard players set FromSpellsling EffectTemp 0
scoreboard players set @s mod_calc_Heighten 1

# Store given duration in temp variable
scoreboard players set BaseTime EffectTemp 0
$scoreboard players set SetTime EffectTemp $(duration)

# Double if catalyst exists
execute if score @s mod_Catalyst matches 1.. run scoreboard players operation BaseTime EffectTemp *= 2 number

# Update in-game player effects
$function exigence:player/effects/private/update_effect/health {amplifier:$(amplifier)}
