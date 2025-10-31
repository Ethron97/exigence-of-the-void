## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#================================================================================================

# TODO fix going invisible while a warden is aware
# IF there is any warden with Awareness
#   Pretty sure this never worked..... player doesn't use Awareness score :(
#execute if score @s Awareness >= #anger_threshold Awareness run function exigence:player/effects/break_invisibility
#execute if score @s Awareness >= #anger_threshold Awareness run return 1
# ELSE continue

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 1 run scoreboard players add et.AddingTime game.effect_temp 100
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 2 run scoreboard players add et.AddingTime game.effect_temp 200
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 3 run scoreboard players add et.AddingTime game.effect_temp 400
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 4 run scoreboard players add et.AddingTime game.effect_temp 600
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 5.. run scoreboard players add et.AddingTime game.effect_temp 1200

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Add added time to current
scoreboard players operation @s game.player.effects.invisibility += et.AddingTime game.effect_temp

# Cap time (if set)
scoreboard players operation @s game.player.effects.invisibility > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.invisibility
data modify storage exigence:player_effects amplifier set value 0
data modify storage exigence:player_effects effect set value "invisibility"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
team join Enemy @s
