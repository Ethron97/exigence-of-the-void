# Macro

# WITH {effect:"",duration:}
# Valid effects: regeneration, jump, beastsense, invisibility, detectthoughts, glimmer, flicker, circulation
#   NOT speed

## OPTIONAL
#   Tag players with "CardEffecting" if we want to target specific players for some reason

#=======================================================================================================

# If no players have "CardEffecting" tag, give to all active players
#   This lets us control it before hand if we want
execute unless entity @a[tag=ActivePlayer,tag=CardEffecting] run tag @a[tag=ActivePlayer,scores={dead=0}] add CardEffecting

# From card
scoreboard players set FromCard EffectTemp 1
execute store result score FromSpellsling EffectTemp if entity @e[type=armor_stand,tag=Spellslinging]
execute as @a[tag=ActivePlayer] run function exigence:player/effects/private/calc_heighten
# If any heighten is getting used, reduce everyone's heighten level in 1t
execute if entity @a[tag=ActivePlayer,tag=CardEffecting,scores={dead=0,mod_Heighten=1..}] run schedule function exigence:player/effects/heighten/decrease 1t replace

# Store given duration in temp variable
$scoreboard players set BaseTime EffectTemp $(duration)
scoreboard players set SetTime EffectTemp 0

# Update in-game player effects
$execute as @a[tag=ActivePlayer,tag=CardEffecting,scores={dead=0}] run function exigence:player/effects/private/update_effect/$(effect)

# Remove localish tag
tag @a[tag=CardEffecting] remove CardEffecting
