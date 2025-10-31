# Used to update the dungeon every tick during active runs
# Called by misc/tick if the game is active

# Update "tick_counter"
scoreboard players add total.game.ticks tick_counter 1
scoreboard players add game.ticks tick_counter 1

# Update tick counter scores
execute if data storage exigence:dungeon {max_menace:0} run scoreboard players add @a[tag=ActivePlayer] profile.data.gametime.cr.regulation_ticks 1
execute if data storage exigence:dungeon {max_menace:1} run scoreboard players add @a[tag=ActivePlayer] profile.data.gametime.cr.max_menace_ticks 1

# Other tick/time stat updates
execute if data storage exigence:dungeon {max_menace:0} as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/stats/time/public/update_time_stats_alive
execute if data storage exigence:dungeon {max_menace:1} as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/stats/time/public/update_time_stats_alive_mm
execute as @a[tag=ActivePlayer,scores={dead=1..}] run function exigence:player/stats/time/public/update_time_stats_dead

# Call tick functions (inactive at max menace)
execute if data storage exigence:dungeon {max_menace:0} run function exigence:ember/ember_tick
execute if data storage exigence:dungeon {max_menace:0} run function exigence:treasure/treasure_tick
execute if data storage exigence:dungeon {max_menace:0} run function exigence:deck/deck_tick/deck_tick



# Check for game end
function exigence:game/game_tick/detect_game_state

# If game is over, end game
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Call tick functions
function exigence:game/game_tick/menace_tick
function exigence:game/game_tick/ambient_tick
function exigence:game/other/ravager_glass/ravager_glass_tick
function exigence:mirror/mirror_tick
function exigence:game/game_tick/detect_active_level
function exigence:bell/bell_tick
function exigence:enemy/enemy_effect_tick
function exigence:door/door_tick
function exigence:game/game_tick/major_damage
function exigence:botany/berry_tick
execute as @a[tag=ActivePlayer] at @s run function exigence:player/tick/tick
execute if score Difficulty DungeonRun matches 0 run function exigence:game/game_tick/beginner_tick

# Echo check (if there are fragments)
execute if score EchosRequired DungeonRun matches 2.. if score seconds.cooldown tick_counter matches 9 if data storage exigence:dungeon {all_echos_found:0} run function exigence:game/game_tick/detect_all_echos

# Move any carried entities along with the player
execute as @e[type=minecraft:villager,tag=Carried] at @s at @a[tag=ActivePlayer,sort=nearest,limit=1,tag=Carrying] run tp @s ~ ~2 ~

# Initialize glow score
#scoreboard players add @e[type=minecraft:item] game.entity.glow_remaining 0
# Glow tick
execute if entity @e[type=#exigence:glowable,scores={game.entity.glow_remaining=1..}] run function exigence:game/game_tick/glow_tick

# Void menu tick if void merchants were loaded
execute if score Difficulty DungeonRun matches 3.. run function exigence:menu/void_menu/void_menu_tick

# Clock item tick
execute if score seconds.cooldown tick_counter matches 3 run function exigence:menu/item_display/void_shop_display/items/clock/update

# Claustrophobia tick
execute if score Claustrophobia Modifiers matches 1 if score seconds.cooldown tick_counter matches 6 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:cards/claustrophobia/update

# If exit portal is open, tick
execute if data storage exigence:dungeon {escape_portal:1} if score exit.portal.countdown tick_counter matches 1.. run function exigence:game/exit/exit_portal/tick

# Void cache udpate
execute if score VoidCache DungeonRun matches 1.. if score seconds.cooldown tick_counter matches 10 run function exigence:cards/void_cache/update

# Check which players are viewing objective bossbar (by holding compass)
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/display/objective/update
# Update objective bossbar if at least one player is viewing
execute if entity @a[tag=ActivePlayer,scores={dead=0},tag=DisplayObjective] run function exigence:bossbar/objective/update_title

# TESTING
#execute as @e[type=minecraft:item] run data modify entity @s Glowing set value 1
#execute as @e[type=minecraft:armor_stand,tag=BellNode,tag=Active] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bell[attachment=ceiling]
