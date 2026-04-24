# Used to update the dungeon every tick during active runs
# Called by misc/tick if the game is active

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Update "tick_counter"
scoreboard players add total.game.ticks tick_counter 1
scoreboard players add game.ticks tick_counter 1

# Call tick functions
execute as @a[tag=ActivePlayer] at @s run function exigence:player/tick/tick

# Check for game end
function exigence:game/game_tick/detect_game_state

# If game is over, end game
execute unless score game.is_active game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------

# Entity ticker
#   The downside of the e_tick_level is that if an item like the web-ball gets thrown in between levels... we're cooked
#function exigence:game/game_tick/e_tick/e_tick_level
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=!player] at @s run function exigence:game/game_tick/e_tick/e_tick_type

function exigence:game/game_tick/detect_active_level

# Call tick functions (inactive at max menace)
#execute if score game.max_menace game.state matches 0 run function exigence:ember/ember_tick
#execute if score game.max_menace game.state matches 0 run function exigence:treasure/treasure_tick
#execute if score game.max_menace game.state matches 0 run function exigence:deck/deck_tick/deck_tick

#function exigence:game/game_tick/menace_tick
#function exigence:game/game_tick/ambient_tick
#function exigence:mirror/mirror_tick
#function exigence:bell/bell_tick

#function exigence:door/door_tick
#function exigence:game/game_tick/major_damage
function exigence:botany/berry_tick

# TEMP BREAK POINT
#----------------------------------------------------------------------------------------------------
return 0

# Move any carried entities along with the player
execute as @e[type=minecraft:villager,tag=Carried] at @s at @a[tag=ActivePlayer,tag=Carrying,sort=nearest,limit=1] run tp @s ~ ~2 ~

# Glow tick
#   MOVE TO E_TICK
#execute if entity @e[type=#exigence:glowable,scores={game.entity.glow_remaining=1..}] run function exigence:game/game_tick/glow_tick

# Void menu tick if void merchants were loaded
execute if score game.difficulty game.state matches 3.. run function exigence:menu/void_menu/void_menu_tick

# Void cache udpate
execute if score mod.void_cache game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 10 run function exigence:cards/void_cache/update


# MOVE TO PLAYER
# Clock item tick
#execute if score seconds.cooldown tick_counter matches 3 run function exigence:menu/item_display/void_shop_display/items/clock/update

# Claustrophobia tick
#execute if score mod.claustrophobia game.modifiers matches 1 if score seconds.cooldown tick_counter matches 6 as @a[scores={dead=0},tag=ActivePlayer] run function exigence:cards/claustrophobia/update

# Check which players are viewing objective bossbar (by holding compass)
#execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:player/display/objective/update

# Update objective bossbar if at least one player is viewing
#execute if entity @a[scores={dead=0},tag=ActivePlayer,tag=DisplayObjective] run function exigence:bossbar/objective/update_title
