# UPDATED TO COME FROM player/tick_alive (so we don't have 50 @s calls in one function)

## CONSTRAINTS
#   AS living player

#==============================================================================================================

# Check if player has drank a potion
execute as @s[scores={game.player.used.potion=1..}] run function exigence:player/effects/private/drink_potion

# Copy item from hand(s) to armorstand if holding potion(s)
function exigence:player/effects/private/save_potion_mainhand
function exigence:player/effects/private/save_potion_offhand

## UPDATE EFFECT TICKS
# Increase tracking scores
scoreboard players add @s[scores={game.player.effects.beastsense=1..}] profile.data.effects.cr.effect_beastsense 1
scoreboard players add @s[scores={game.player.effects.circulation=1..}] profile.data.effects.cr.effect_circulation 1
scoreboard players add @s[scores={game.player.effects.detection=1..}] profile.data.effects.cr.effect_detection 1
scoreboard players add @s[scores={game.player.effects.detectthoughts=1..}] profile.data.effects.cr.effect_detectthoughts 1
scoreboard players add @s[scores={game.player.effects.farstep=1..}] profile.data.effects.cr.effect_farstep 1
scoreboard players add @s[scores={game.player.effects.flicker=1..}] profile.data.effects.cr.effect_flicker 1
scoreboard players add @s[scores={game.player.effects.glimmer=1..}] profile.data.effects.cr.effect_glimmer 1
scoreboard players add @s[scores={game.player.effects.invisibility=1..}] profile.data.effects.cr.effect_invisibility 1
scoreboard players add @s[scores={game.player.effects.jump=1..}] profile.data.effects.cr.effect_jump 1
scoreboard players add @s[scores={game.player.effects.jump4=1..}] profile.data.effects.cr.effect_jump4 1
scoreboard players add @s[scores={game.player.effects.jump6=1..}] profile.data.effects.cr.effect_jump6 1
scoreboard players add @s[scores={game.player.effects.jump8=1..}] profile.data.effects.cr.effect_jump8 1
scoreboard players add @s[scores={game.player.effects.regen=1..}] profile.data.effects.cr.effect_regen 1
scoreboard players add @s[scores={game.player.effects.speed1=1..}] profile.data.effects.cr.effect_speed1 1
scoreboard players add @s[scores={game.player.effects.speed2=1..}] profile.data.effects.cr.effect_speed2 1
scoreboard players add @s[scores={game.player.effects.speed3=1..}] profile.data.effects.cr.effect_speed3 1
scoreboard players add @s[scores={game.player.effects.speed4=1..}] profile.data.effects.cr.effect_speed4 1
scoreboard players add @s[scores={game.player.effects.speed5=1..}] profile.data.effects.cr.effect_speed5 1
scoreboard players add @s[scores={game.player.effects.speed6=1..}] profile.data.effects.cr.effect_speed6 1
scoreboard players add @s[scores={game.player.effects.speed7=1..}] profile.data.effects.cr.effect_speed7 1
scoreboard players add @s[scores={game.player.effects.speed8=1..}] profile.data.effects.cr.effect_speed8 1
scoreboard players add @s[scores={game.player.effects.speed9=1..}] profile.data.effects.cr.effect_speed9 1
scoreboard players add @s[scores={game.player.effects.speed10=1..}] profile.data.effects.cr.effect_speed10 1

# Decrease gameplay scores
scoreboard players remove @s[scores={game.player.effects.beastsense=1..}] game.player.effects.beastsense 1
scoreboard players remove @s[scores={game.player.effects.circulation=1..}] game.player.effects.circulation 1
scoreboard players remove @s[scores={game.player.effects.detection=1..}] game.player.effects.detection 1
scoreboard players remove @s[scores={game.player.effects.detectthoughts=1..}] game.player.effects.detectthoughts 1
scoreboard players remove @s[scores={game.player.effects.farstep=1..}] game.player.effects.farstep 1
scoreboard players remove @s[scores={game.player.effects.flicker=1..}] game.player.effects.flicker 1
scoreboard players remove @s[scores={game.player.effects.glimmer=1..}] game.player.effects.glimmer 1
scoreboard players remove @s[scores={game.player.effects.invisibility=1..}] game.player.effects.invisibility 1
scoreboard players remove @s[scores={game.player.effects.jump=1..}] game.player.effects.jump 1
scoreboard players remove @s[scores={game.player.effects.jump4=1..}] game.player.effects.jump4 1
scoreboard players remove @s[scores={game.player.effects.jump6=1..}] game.player.effects.jump6 1
scoreboard players remove @s[scores={game.player.effects.jump8=1..}] game.player.effects.jump8 1
scoreboard players remove @s[scores={game.player.effects.regen=1..}] game.player.effects.regen 1
scoreboard players remove @s[scores={game.player.effects.speed=1..}] game.player.effects.speed 1
scoreboard players remove @s[scores={game.player.effects.speed1=1..}] game.player.effects.speed1 1
scoreboard players remove @s[scores={game.player.effects.speed2=1..}] game.player.effects.speed2 1
scoreboard players remove @s[scores={game.player.effects.speed3=1..}] game.player.effects.speed3 1
scoreboard players remove @s[scores={game.player.effects.speed4=1..}] game.player.effects.speed4 1
scoreboard players remove @s[scores={game.player.effects.speed5=1..}] game.player.effects.speed5 1
scoreboard players remove @s[scores={game.player.effects.speed6=1..}] game.player.effects.speed6 1
scoreboard players remove @s[scores={game.player.effects.speed7=1..}] game.player.effects.speed7 1
scoreboard players remove @s[scores={game.player.effects.speed8=1..}] game.player.effects.speed8 1
scoreboard players remove @s[scores={game.player.effects.speed9=1..}] game.player.effects.speed9 1
scoreboard players remove @s[scores={game.player.effects.speed10=1..}] game.player.effects.speed10 1

#================================================================================================

execute as @s[scores={game.player.effects.beastsense=1..}] run function exigence:player/effects/beast_sense/beast_sense_tick
execute as @s[scores={game.player.effects.flicker=1..}] at @s run function exigence:player/effects/flicker/flicker_tick
execute as @s[scores={game.player.effects.glimmer=1..}] at @s run function exigence:player/effects/glimmer/glimmer_tick

# If the player gets within 5 blocks of an enemy, remove pacfiy
execute as @s[scores={game.player.effects.invisibility=1..}] at @s if entity @e[distance=..5,type=!minecraft:player,team=Enemy] run function exigence:player/effects/break_invisibility

# If no longer invisible, but on enemy team, rejoin player
execute as @s[scores={game.player.effects.invisibility=0},team=Enemy] run team join Player @s

#================================================================================================
## MODIFIERS

execute at @s[scores={game.player.mod.treasure_lantern=1..}] run function exigence:player/modifiers/treasure_lantern
execute at @s[scores={game.player.mod.ember_lantern=1..}] run function exigence:player/modifiers/ember_lantern
execute at @s[scores={game.player.mod.berry_vision=1..}] run function exigence:player/modifiers/berry_vision
execute at @s[scores={game.player.mod.magnet=1..}] run function exigence:player/modifiers/magnet
execute at @s[scores={game.player.mod.dragon_breath=1..}] run function exigence:player/modifiers/dragon_breath

# Give Slowness III, if there are any entities being Carried
effect give @s[tag=Carrying,predicate=!exigence:effects/slowness2] slowness infinite 2 true

# Clear slowness II (so Grease doesn't kill the player)
effect clear @s[predicate=exigence:effects/slowness1] minecraft:slowness

# If luckyfeather modifier, and holding feather, give slowfal
execute if score LuckyFeather Modifiers matches 1 as @s[predicate=exigence:equipment/holding_feather,predicate=!exigence:effects/slow_falling1] run effect give @s slow_falling infinite 1
execute if score LuckyFeather Modifiers matches 1 as @s[predicate=!exigence:equipment/holding_feather,predicate=exigence:effects/slow_falling1] run effect clear @s slow_falling
