# Macro
# function exigence:player/effects/set_effect_time {effect:"",duration:}
# Valid effects: regen, jump, darkVision, beastSense

#================================================================================================

#$say Set effect $(effect) $(duration)

# Setup scores
scoreboard players set FromCard EffectTemp 0
scoreboard players set FromSpellsling EffectTemp 0
scoreboard players set @s mod_calc_Heighten 1

# Store given duration in temp variable
scoreboard players set BaseTime EffectTemp 0
$scoreboard players set SetTime EffectTemp $(duration)

# Update in-game player effects
$function exigence:player/effects/private/update_effect/$(effect)
