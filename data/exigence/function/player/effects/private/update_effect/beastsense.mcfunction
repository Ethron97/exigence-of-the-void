## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#====================================================================================================

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.beast_vision matches 7 run scoreboard players add et.BonusTime game.effect_temp 600

# Tellraw feedback of total increase to duration from bonuses:
scoreboard players operation #temp game.effect_temp = et.BonusTime game.effect_temp
scoreboard players operation #temp game.effect_temp /= 20 number
execute if score et.FromCard game.effect_temp matches 1 if score #temp game.effect_temp matches 1.. run tellraw @s [{text:" └─ [",color:"gray"},{text:"Bonus Effects",color:"green"},{text:"]: +",color:"gray"},{score:{name:"#temp",objective:"game.effect_temp"},color:"gray"},{text:" seconds of ",color:"gray"},{text:"Beastsense",color:"yellow"}]

# Add bonus time to adding time
scoreboard players operation et.AddingTime game.effect_temp += et.BonusTime game.effect_temp

# Multiply total add time by heighten modifier
scoreboard players operation et.AddingTime game.effect_temp *= @s game.player.calc_heighten

# Add added time to current
scoreboard players operation @s game.player.effects.beastsense += et.AddingTime game.effect_temp

# Cap time (if set)
scoreboard players operation @s game.player.effects.beastsense > et.SetTime game.effect_temp

# Give player effect
execute store result storage exigence:player_effects duration int 0.05 run scoreboard players get @s game.player.effects.beastsense
execute store result storage exigence:player_effects amplifier int 1 run scoreboard players get @s game.player.mod.beast_vision
data modify storage exigence:player_effects effect set value "luck"
function exigence:player/effects/private/give_potion_effect with storage exigence:player_effects

# Reduce 20
