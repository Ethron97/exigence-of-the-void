# Macro

## CONSTRAINTS
#   AS player

# WITH {duration:,level:}, level is the literal level, not amplifier. So it starts at 1.
# Valid levels: 1-10

#=======================================================================================================

# Setup scores
scoreboard players set FromCard EffectTemp 0
scoreboard players set FromPotion EffectTemp 0
scoreboard players set FromSpellsling EffectTemp 0
scoreboard players set @s mod_calc_Heighten 1

# Store given duration in temp variable
scoreboard players set BaseTime EffectTemp 0
$scoreboard players set SetTime EffectTemp $(duration)

# Amplifier is one less than level
$scoreboard players set Level EffectTemp $(level)
scoreboard players operation Amplifier EffectTemp = Level EffectTemp
scoreboard players remove Amplifier EffectTemp 1

# Update in-game player effects
$function exigence:player/effects/private/update_effect/speed {level:$(level)}
