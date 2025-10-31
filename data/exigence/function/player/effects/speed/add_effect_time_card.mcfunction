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
scoreboard players set et.FromCard game.effect_temp 1
scoreboard players set et.FromPotion game.effect_temp 0
scoreboard players set et.FromSpellsling game.effect_temp 0
execute as @a[tag=ActivePlayer] run function exigence:player/effects/private/calc_heighten
# If any heighten is getting used, reduce everyone's heighten level
execute if entity @a[tag=ActivePlayer,tag=CardEffecting,scores={dead=0,game.player.heighten=1..}] run schedule function exigence:player/effects/heighten/decrease 1t replace

# Store given duration in temp variable
$scoreboard players set et.BaseTime game.effect_temp $(duration)
scoreboard players set et.SetTime game.effect_temp 0

# Amplifier is one less than level
$scoreboard players set et.Level game.effect_temp $(level)
scoreboard players operation et.Amplifier game.effect_temp = et.Level game.effect_temp
scoreboard players remove et.Amplifier game.effect_temp 1

# Update in-game player effects
$execute as @a[tag=ActivePlayer,tag=CardEffecting] run function exigence:player/effects/private/update_effect/speed {level:$(level)}

# Remove localish tag
tag @a[tag=CardEffecting] remove CardEffecting
