## CONSTRAINTS
#   AS player

## INPUT
#   INT level
#   SCORE et.BaseTime game.effect_temp, ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
#   Metabolism = +30 seconds * modifier
scoreboard players set #temp game.effect_temp 600
scoreboard players operation #temp game.effect_temp *= Metabolism Modifiers
execute if score et.FromCard game.effect_temp matches 1 run scoreboard players operation et.AddingTime game.effect_temp += #temp game.effect_temp

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Add added time to current
$scoreboard players operation @s game.player.effects.speed$(level) += et.AddingTime game.effect_temp

# Cap time (if set)
$scoreboard players operation @s game.player.effects.speed$(level) > et.SetTime game.effect_temp

# Give player effect
$execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.speed$(level)
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get et.Amplifier game.effect_temp
data modify storage exigence:player_effects effect set value "speed"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Update Accelerate modifier for this player
$scoreboard players operation @s game.player.mod.accelerate > $(level) number

# Also increase player's "total speed" score for coalesce checking.
#   game.player.effects.speed should always match the player's highest duration
$scoreboard players operation @s game.player.effects.speed > @s game.player.effects.speed$(level)

# Trigger QoL check for step height
function exigence:player/attributes/step_height