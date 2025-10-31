# Macro

## CONSTRAINTS
#   AS player

# WITH {effect:"",duration:}
# Valid effects: regeneration, jump, beastsense, invisibility, detectthoughts, glimmer, flicker, circulation
#   NOT speed

#=======================================================================================================

# Setup scores
scoreboard players set et.FromCard game.effect_temp 0
scoreboard players set et.FromSpellsling game.effect_temp 0
scoreboard players set @s game.player.calc_heighten 1

# Store given duration in temp variable
$scoreboard players set et.BaseTime game.effect_temp $(duration)
scoreboard players set et.SetTime game.effect_temp 0

# Update in-game player effects
$function exigence:player/effects/private/update_effect/$(effect)
