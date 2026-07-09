# Used to update the dungeon every tick during active runs
# Called by misc/tick if the game is active

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Update "tick_counter"
scoreboard players add total.game.ticks tick_counter 1
scoreboard players add game.ticks tick_counter 1

# Call player tick functions (unless they have escaped)
execute as @a[tag=ActivePlayer,tag=!Escaped] at @s run function exigence:player/tick/tick

# Check for game end
function exigence:game/game_tick/detect_game_state

# If game is over, end game
execute unless score game.is_active game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------

## ENTITY TICKER
# Check and store if at least one player has Detection for most common case in waypoint checks:
scoreboard players set #detecting game.state 0
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.effects.detection=1..}] run scoreboard players set #detecting game.state 1
#   The downside of the e_tick_level is that if an item like the web-ball gets thrown in between levels... we're cooked
#function exigence:game/game_tick/e_tick/e_tick_level
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=ETICK] at @s run function exigence:game/game_tick/e_tick/e_tick_type

function exigence:game/game_tick/detect_active_level
function exigence:botany/berry_tick
function exigence:game/game_tick/menace_tick
function exigence:mirror/mirror_tick

# Call tick functions (inactive at max menace)
execute if score game.max_menace game.state matches 0 run function exigence:ember/ember_tick
execute if score game.max_menace game.state matches 0 run function exigence:treasure/treasure_tick
execute if score game.max_menace game.state matches 0 run function exigence:deck/deck_tick/deck_tick

#function exigence:game/game_tick/major_damage

# Check which players are viewing objective bossbar (by holding compass)
#execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:player/display/objective/update
# Update objective bossbar if at least one player is viewing
#execute if entity @a[scores={dead=0},tag=ActivePlayer,tag=DisplayObjective] run function exigence:bossbar/objective/update_title
execute if score seconds.cooldown tick_counter matches 1 run function exigence:bossbar/objective/update_title_v1

# If Heighten was consumed, reduce heighten (must happen after all players have resolved Effect Tick)
execute as @a[scores={dead=0},tag=ActivePlayer,tag=ReduceHeighten] at @s run function exigence:player/effects/heighten/decrease

# Clock update
execute if score seconds.cooldown tick_counter matches 3 run function exigence:player/use_item/clock/update

# Void cache udpate (should just be handled by ETICK)
#execute if score mod.void_cache game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 10 run function exigence:cards/void_cache/update
