# Macro
# function exigence:player/effects/set_effect_time {effect:"",duration:}
# Valid effects: health

## CONSTRAINTS
#   AS player

## INPUT
#   INT amplifier
#   INT duration

#====================================================================================================

# DEBUG
$execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Set effect health: $(duration) $(amplifier)

# Setup scores
scoreboard players set et.FromCard game.effect_temp 0
scoreboard players set et.FromSpellsling game.effect_temp 0
scoreboard players set @s game.player.calc_heighten 1

# Store given duration in temp variable
scoreboard players set et.BaseTime game.effect_temp 0
$scoreboard players set et.SetTime game.effect_temp $(duration)

# Double if catalyst exists
execute if score @s game.player.mod.catalyst matches 1.. run scoreboard players operation et.BaseTime game.effect_temp *= 2 number

# Update in-game player effects
$function exigence:player/effects/private/update_effect/health {amplifier:$(amplifier)}
