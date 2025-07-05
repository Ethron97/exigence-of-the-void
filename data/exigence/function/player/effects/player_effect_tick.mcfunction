# UPDATE TO COME FROM player/tick_alive
# TODO

# Check if player has drank a potion
execute as @a[tag=ActivePlayer,scores={dead=0,DrinkPotion=1..}] run function exigence:player/effects/private/drink_potion

# Copy item from hand(s) to armorstand if holding potion(s)
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/private/save_potion_mainhand
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/private/save_potion_offhand

## UPDATE EFFECT TICKS
# Increase tracking scores
scoreboard players add @a[scores={effect_beastsense=1..}] cr_effect_beastsense 1
scoreboard players add @a[scores={effect_circulation=1..}] cr_effect_circulation 1
scoreboard players add @a[scores={effect_detection=1..}] cr_effect_detection 1
scoreboard players add @a[scores={effect_detectthoughts=1..}] cr_effect_detectthoughts 1
scoreboard players add @a[scores={effect_farstep=1..}] cr_effect_farstep 1
scoreboard players add @a[scores={effect_flicker=1..}] cr_effect_flicker 1
scoreboard players add @a[scores={effect_glimmer=1..}] cr_effect_glimmer 1
scoreboard players add @a[scores={effect_invisibility=1..}] cr_effect_invisibility 1
scoreboard players add @a[scores={effect_jump=1..}] cr_effect_jump 1
scoreboard players add @a[scores={effect_jump4=1..}] cr_effect_jump4 1
scoreboard players add @a[scores={effect_jump6=1..}] cr_effect_jump6 1
scoreboard players add @a[scores={effect_jump8=1..}] cr_effect_jump8 1
scoreboard players add @a[scores={effect_regen=1..}] cr_effect_regen 1
scoreboard players add @a[scores={effect_speed1=1..}] cr_effect_speed1 1
scoreboard players add @a[scores={effect_speed2=1..}] cr_effect_speed2 1
scoreboard players add @a[scores={effect_speed3=1..}] cr_effect_speed3 1
scoreboard players add @a[scores={effect_speed4=1..}] cr_effect_speed4 1
scoreboard players add @a[scores={effect_speed5=1..}] cr_effect_speed5 1
scoreboard players add @a[scores={effect_speed6=1..}] cr_effect_speed6 1
scoreboard players add @a[scores={effect_speed7=1..}] cr_effect_speed7 1
scoreboard players add @a[scores={effect_speed8=1..}] cr_effect_speed8 1
scoreboard players add @a[scores={effect_speed9=1..}] cr_effect_speed9 1
scoreboard players add @a[scores={effect_speed10=1..}] cr_effect_speed10 1

scoreboard players add @a[scores={effect_beastsense=1..}] t_effect_beastsense 1
scoreboard players add @a[scores={effect_circulation=1..}] t_effect_circulation 1
scoreboard players add @a[scores={effect_detection=1..}] t_effect_detection 1
scoreboard players add @a[scores={effect_detectthoughts=1..}] t_effect_detectthoughts 1
scoreboard players add @a[scores={effect_farstep=1..}] t_effect_farstep 1
scoreboard players add @a[scores={effect_flicker=1..}] t_effect_flicker 1
scoreboard players add @a[scores={effect_glimmer=1..}] t_effect_glimmer 1
scoreboard players add @a[scores={effect_invisibility=1..}] t_effect_invisibility 1
scoreboard players add @a[scores={effect_jump=1..}] t_effect_jump 1
scoreboard players add @a[scores={effect_jump4=1..}] t_effect_jump4 1
scoreboard players add @a[scores={effect_jump6=1..}] t_effect_jump6 1
scoreboard players add @a[scores={effect_jump8=1..}] t_effect_jump8 1
scoreboard players add @a[scores={effect_regen=1..}] t_effect_regen 1
scoreboard players add @a[scores={effect_speed1=1..}] t_effect_speed1 1
scoreboard players add @a[scores={effect_speed2=1..}] t_effect_speed2 1
scoreboard players add @a[scores={effect_speed3=1..}] t_effect_speed3 1
scoreboard players add @a[scores={effect_speed4=1..}] t_effect_speed4 1
scoreboard players add @a[scores={effect_speed5=1..}] t_effect_speed5 1
scoreboard players add @a[scores={effect_speed6=1..}] t_effect_speed6 1
scoreboard players add @a[scores={effect_speed7=1..}] t_effect_speed7 1
scoreboard players add @a[scores={effect_speed8=1..}] t_effect_speed8 1
scoreboard players add @a[scores={effect_speed9=1..}] t_effect_speed9 1
scoreboard players add @a[scores={effect_speed10=1..}] t_effect_speed10 1

# Decrease gameplay scores
scoreboard players remove @a[scores={effect_beastsense=1..}] effect_beastsense 1
scoreboard players remove @a[scores={effect_circulation=1..}] effect_circulation 1
scoreboard players remove @a[scores={effect_detection=1..}] effect_detection 1
scoreboard players remove @a[scores={effect_detectthoughts=1..}] effect_detectthoughts 1
scoreboard players remove @a[scores={effect_farstep=1..}] effect_farstep 1
scoreboard players remove @a[scores={effect_flicker=1..}] effect_flicker 1
scoreboard players remove @a[scores={effect_glimmer=1..}] effect_glimmer 1
scoreboard players remove @a[scores={effect_invisibility=1..}] effect_invisibility 1
scoreboard players remove @a[scores={effect_jump=1..}] effect_jump 1
scoreboard players remove @a[scores={effect_jump4=1..}] effect_jump4 1
scoreboard players remove @a[scores={effect_jump6=1..}] effect_jump6 1
scoreboard players remove @a[scores={effect_jump8=1..}] effect_jump8 1
scoreboard players remove @a[scores={effect_regen=1..}] effect_regen 1
scoreboard players remove @a[scores={effect_speed=1..}] effect_speed 1
scoreboard players remove @a[scores={effect_speed1=1..}] effect_speed1 1
scoreboard players remove @a[scores={effect_speed2=1..}] effect_speed2 1
scoreboard players remove @a[scores={effect_speed3=1..}] effect_speed3 1
scoreboard players remove @a[scores={effect_speed4=1..}] effect_speed4 1
scoreboard players remove @a[scores={effect_speed5=1..}] effect_speed5 1
scoreboard players remove @a[scores={effect_speed6=1..}] effect_speed6 1
scoreboard players remove @a[scores={effect_speed7=1..}] effect_speed7 1
scoreboard players remove @a[scores={effect_speed8=1..}] effect_speed8 1
scoreboard players remove @a[scores={effect_speed9=1..}] effect_speed9 1
scoreboard players remove @a[scores={effect_speed10=1..}] effect_speed10 1


# Anything above Radiant (0) gets darkness
#execute as @a[tag=ActivePlayer,predicate=!exigence:effects/darkness,scores={ProfileDifficulty=1..}] run effect give @s minecraft:darkness infinite 0 true
#execute if score ProfileDifficulty DungeonRun matches 1.. as @a[tag=ActivePlayer,predicate=!exigence:effects/darkness] run effect give @s minecraft:darkness infinite 0 true

# Give darkness as long as void debug is not on
#execute if data storage exigence:debug {void:0} as @a[tag=ActivePlayer,predicate=!exigence:effects/darkness] run effect give @s minecraft:darkness infinite 0 true

execute as @a[tag=ActivePlayer,scores={dead=0,effect_beastsense=1..}] run function exigence:player/effects/beast_sense/beast_sense_tick
execute as @a[tag=ActivePlayer,scores={dead=0,effect_flicker=1..}] at @s run function exigence:player/effects/flicker/flicker_tick
execute as @a[tag=ActivePlayer,scores={dead=0,effect_glimmer=1..}] at @s run function exigence:player/effects/glimmer/glimmer_tick

# If the player gets within 5 blocks of an enemy, remove pacfiy
execute as @a[tag=ActivePlayer,scores={dead=0,effect_invisibility=1..}] at @s if entity @e[distance=..5,type=!minecraft:player,team=Enemy] run function exigence:player/effects/break_invisibility

# If no longer invisible, but on enemy team, rejoin player
execute as @a[tag=ActivePlayer,scores={dead=0,effect_invisibility=0},team=Enemy] run team join Player @s

#================================================================================================
## MODIFIERS

execute at @a[tag=ActivePlayer,scores={dead=0,mod_TreasureLantern=1..}] run function exigence:player/modifiers/treasure_lantern
execute at @a[tag=ActivePlayer,scores={dead=0,mod_EmberLantern=1..}] run function exigence:player/modifiers/ember_lantern
execute at @a[tag=ActivePlayer,scores={dead=0,mod_BerryVision=1..}] run function exigence:player/modifiers/berry_vision
execute at @a[tag=ActivePlayer,scores={dead=0,mod_Magnet=1..}] run function exigence:player/modifiers/magnet
execute at @a[tag=ActivePlayer,scores={dead=0,mod_DragonBreath=1..}] run function exigence:player/modifiers/dragon_breath

# Give Slowness III, if there are any entities being Carried
effect give @a[tag=ActivePlayer,tag=Carrying,predicate=!exigence:effects/slowness2] slowness infinite 2 true

# Clear slowness II (so Grease doesn't kill the player)
effect clear @a[tag=ActivePlayer,predicate=exigence:effects/slowness1] minecraft:slowness

# If luckyfeather modifier, and holding feather, give slowfal
execute if score LuckyFeather Modifiers matches 1 as @a[tag=ActivePlayer,predicate=exigence:equipment/holding_feather,predicate=!exigence:effects/slow_falling1] run effect give @s slow_falling infinite 1
execute if score LuckyFeather Modifiers matches 1 as @a[tag=ActivePlayer,predicate=!exigence:equipment/holding_feather,predicate=exigence:effects/slow_falling1] run effect clear @s slow_falling
