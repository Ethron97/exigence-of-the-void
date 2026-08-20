## CONSTRAINTS
#   AS player

## INPUT
#   et.BaseTime game.effect_temp - score set to a base duration in ticks

#====================================================================================================

# CHECK FOR EXCEPTIONS:
#   IF MAX MENACE:
execute if score game.max_menace game.state matches 1 run return run tellraw @s [{text:"✖ Cannot become invisible at max menace!",color:"red"}]
#   IF WARDEN IS ANGRY AT YOU:
execute if score @s game.player.player_number matches 1 if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:warden,tag=Angry,tag=!Cooldown,scores={game.warden.angry_at=1},limit=1] run return run tellraw @s [{text:"✖ Cannot become invisible while a warden is angry at you!",color:"red"}]
execute if score @s game.player.player_number matches 2 if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:warden,tag=Angry,tag=!Cooldown,scores={game.warden.angry_at=2},limit=1] run return run tellraw @s [{text:"✖ Cannot become invisible while a warden is angry at you!",color:"red"}]
execute if score @s game.player.player_number matches 3 if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:warden,tag=Angry,tag=!Cooldown,scores={game.warden.angry_at=3},limit=1] run return run tellraw @s [{text:"✖ Cannot become invisible while a warden is angry at you!",color:"red"}]
execute if score @s game.player.player_number matches 4 if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:warden,tag=Angry,tag=!Cooldown,scores={game.warden.angry_at=4},limit=1] run return run tellraw @s [{text:"✖ Cannot become invisible while a warden is angry at you!",color:"red"}]
#----------------------------------------------------------------------------------------------------

# Copy base "add time"
scoreboard players operation et.AddingTime game.effect_temp = et.BaseTime game.effect_temp

# DURATION MODIFIERS
function exigence:player/effects/private/update_effect/common_duration_mods
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 1 run scoreboard players add et.BonusTime game.effect_temp 100
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 2 run scoreboard players add et.BonusTime game.effect_temp 200
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 3 run scoreboard players add et.BonusTime game.effect_temp 400
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 4 run scoreboard players add et.BonusTime game.effect_temp 600
execute if score et.FromCard game.effect_temp matches 1 if score @s game.player.mod.phantom_scales matches 5.. run scoreboard players add et.BonusTime game.effect_temp 1200

# Tellraw feedback of total increase to duration from bonuses:
scoreboard players operation #temp game.effect_temp = et.BonusTime game.effect_temp
scoreboard players operation #temp game.effect_temp /= 20 number
execute if score et.FromCard game.effect_temp matches 1 if score #temp game.effect_temp matches 1.. run tellraw @s [{text:" └─ [",color:"gray"},{text:"Bonus Effects",color:"green"},{text:"]: +",color:"gray"},{score:{name:"#temp",objective:"game.effect_temp"},color:"gray"},{text:" seconds of ",color:"gray"},{text:"Invisibility",color:"yellow"}]

# Add bonus time to adding time
scoreboard players operation et.AddingTime game.effect_temp += et.BonusTime game.effect_temp

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
