## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#================================================================================================

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.regen_mantle matches 1 run scoreboard players add et.AddingTime game.effect_temp 100
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.regen_mantle matches 2 run scoreboard players add et.AddingTime game.effect_temp 200
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.regen_mantle matches 3 run scoreboard players add et.AddingTime game.effect_temp 400
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.regen_mantle matches 4 run scoreboard players add et.AddingTime game.effect_temp 600
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.regen_mantle matches 5.. run scoreboard players add et.AddingTime game.effect_temp 1200

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Add added time to current
scoreboard players operation @s game.player.effects.regen += et.AddingTime game.effect_temp

# Cap time (if set)
scoreboard players operation @s game.player.effects.regen > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.regen
data modify storage exigence:player_effects amplifier set value 0
# Mending: upgrade regen I -> regen II
execute if score @s game.player.mod.regen_mantle matches 7 run data modify storage exigence:player_effects amplifier set value 1
data modify storage exigence:player_effects effect set value "regeneration"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# If game.player.mod.regen_mantle = 6, +1 max health
execute if score @s game.player.mod.regen_mantle matches 6 run function exigence:player/attributes/health_boost/increase_health {boost:2}