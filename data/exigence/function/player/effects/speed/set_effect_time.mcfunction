# Macro

## CONSTRAINTS
#   AS player

# WITH {duration:,level:}, level is the literal level, not amplifier. So it starts at 1.
# Valid levels: 1-10

#=======================================================================================================

# Setup scores
scoreboard players set et.FromCard game.effect_temp 0
scoreboard players set et.FromPotion game.effect_temp 0
scoreboard players set et.FromSpellsling game.effect_temp 0
scoreboard players set @s game.player.calc_heighten 1

# Store given duration in temp variable
scoreboard players set et.BaseTime game.effect_temp 0
$scoreboard players set et.SetTime game.effect_temp $(duration)

# Amplifier is one less than level
$scoreboard players set et.Level game.effect_temp $(level)
scoreboard players operation et.Amplifier game.effect_temp = et.Level game.effect_temp
scoreboard players remove et.Amplifier game.effect_temp 1

# Update in-game player effects
$function exigence:player/effects/private/update_effect/speed {level:$(level)}
