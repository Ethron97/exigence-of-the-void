## CONSTRAINTS
#   AS player

## INPUT
#   BaseTime EffectTemp - score set to a base duration in ticks

#================================================================================================

# IF there is any warden with Awareness
#   Pretty sure this never worked..... player doesn't use Awareness score :(
#execute if score @s Awareness >= #anger_threshold Awareness run function exigence:player/effects/break_invisibility
#execute if score @s Awareness >= #anger_threshold Awareness run return 1
# ELSE continue

# Copy base "add time"
scoreboard players operation AddingTime EffectTemp = BaseTime EffectTemp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score FromCard EffectTemp matches 1 if score @s mod_PhantomScales matches 1 run scoreboard players add AddingTime EffectTemp 100
execute if score FromCard EffectTemp matches 1 if score @s mod_PhantomScales matches 2 run scoreboard players add AddingTime EffectTemp 200
execute if score FromCard EffectTemp matches 1 if score @s mod_PhantomScales matches 3 run scoreboard players add AddingTime EffectTemp 400
execute if score FromCard EffectTemp matches 1 if score @s mod_PhantomScales matches 4 run scoreboard players add AddingTime EffectTemp 600
execute if score FromCard EffectTemp matches 1 if score @s mod_PhantomScales matches 5.. run scoreboard players add AddingTime EffectTemp 1200

# Multiply total add time by heighten modifier
scoreboard players operation AddingTime EffectTemp *= @s mod_calc_Heighten

# Add added time to current
scoreboard players operation @s effect_invisibility += AddingTime EffectTemp

# Cap time (if set)
scoreboard players operation @s effect_invisibility > SetTime EffectTemp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s effect_invisibility
data modify storage exigence:player_effects amplifier set value 0
data modify storage exigence:player_effects effect set value "invisibility"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects
team join Enemy @s
