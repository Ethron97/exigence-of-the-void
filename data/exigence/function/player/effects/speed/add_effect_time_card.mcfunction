# Macro

# WITH {duration:,level:}, level is the literal level, not amplifier. So it starts at 1.
# Valid levels: 1-10

## OPTIONAL
#   Tag players with "CardEffecting" if we want to target specific players for some reason

#=======================================================================================================

# If no players have "CardEffecting" tag, give to all active players
#   This lets us control it before hand if we want
execute unless entity @a[tag=ActivePlayer,tag=CardEffecting] run tag @a[tag=ActivePlayer,scores={dead=0}] add CardEffecting

# Setup scores
scoreboard players set FromCard EffectTemp 1
scoreboard players set FromPotion EffectTemp 0
scoreboard players set FromSpellsling EffectTemp 0
execute as @a[tag=ActivePlayer] run function exigence:player/effects/private/calc_heighten
# If any heighten is getting used, reduce everyone's heighten level
execute if entity @a[tag=ActivePlayer,tag=CardEffecting,scores={dead=0,mod_Heighten=1..}] run schedule function exigence:player/effects/heighten/decrease 1t replace

# Store given duration in temp variable
$scoreboard players set BaseTime EffectTemp $(duration)
scoreboard players set SetTime EffectTemp 0

# Amplifier is one less than level
$scoreboard players set Level EffectTemp $(level)
scoreboard players operation Amplifier EffectTemp = Level EffectTemp
scoreboard players remove Amplifier EffectTemp 1

# Update in-game player effects
$execute as @a[tag=ActivePlayer,tag=CardEffecting] run function exigence:player/effects/private/update_effect/speed {level:$(level)}

# Remove localish tag
tag @a[tag=CardEffecting] remove CardEffecting
