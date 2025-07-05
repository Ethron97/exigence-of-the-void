# Macro

## CONSTRAINTS
#   AS player

# WITH {effect:"",duration:}
# Valid effects: regeneration, jump, beastsense, invisibility, detectthoughts, glimmer, flicker, circulation
#   NOT speed

#=======================================================================================================

# Setup scores
scoreboard players set FromCard EffectTemp 0
scoreboard players set FromSpellsling EffectTemp 0
scoreboard players set @s mod_calc_Heighten 1

# Store given duration in temp variable
$scoreboard players set BaseTime EffectTemp $(duration)
scoreboard players set SetTime EffectTemp 0

# Update in-game player effects
$function exigence:player/effects/private/update_effect/$(effect)
