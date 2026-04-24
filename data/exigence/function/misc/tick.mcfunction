# Root tick function

#====================================================================================================

# === SECONDS CLOCK ===
# Update seconds cooldown. Most /tick/ functions have at least one function that relies on this.
# All queable systems resolve one queued item per second.
scoreboard players remove seconds.cooldown tick_counter 1

# If game is active, game tick
execute if score game.is_active game.state matches 1 run function exigence:game/game_tick/game_tick
# If any players are in the hub dimension, hub tick
execute in exigence:hub positioned 0 200 0 if entity @a[distance=..2000,limit=1] run function exigence:hub/hub_tick
# If tutorial is active, tutorial tick
execute if data storage exigence:dungeon {tutorial:1} in exigence:tutorial run function exigence:tutorial/tick

# Interaction handling
execute at @a as @e[type=minecraft:interaction,distance=..8] at @s run function exigence:misc/interaction/check_interaction

# Send to prologue (disabled for testing)
#execute as @a[advancements={exigence:story/root=false},tag=!Introducing] unless score @s career.prologue matches 1 in exigence:hub run function exigence:hub/prologue/enter

# TP eople stuck in the sky box (respawn broken for some reason)
execute positioned -376.5 318.00 -119.5 run tp @a[distance=..5] -260.5 17.00 -44.5

# Triggers
execute as @a run function exigence:misc/triggers/trigger_check

# DEPRECATED
#execute as @e[tag=UpdateCoords] run function exigence:misc/update_coords

# Room ticks
function exigence:room/room_tick

# Profile ticks (check for player online/offline)
function exigence:profile/profile_tick

# DEBUG
#====================================================================================================
# Temp testing
#function exigence:mirror/mirrors/detect_approaches

# Position debug
execute as @a[tag=Admin,tag=!ActivePlayer] run function exigence:misc/predicate_debug
# Update debug.node_counter automatically every second
execute store result storage exigence:debug current_level int 1 run scoreboard players get Ethron97 ObjectLevel
execute if data storage exigence:debug {void:1} if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_node_counter with storage exigence:debug

# Update vault node counter
execute if data storage exigence:debug {void:1} if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_vault_counter

# This is for difficulty setup
execute if data storage exigence:debug {echo:1} if score seconds.cooldown tick_counter matches 0 at @e[type=minecraft:marker,scores={node.property.echo.difficulty=0},tag=EchoNode] run team join Hazard @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]
execute if data storage exigence:debug {echo:1} if score seconds.cooldown tick_counter matches 0 at @e[type=minecraft:marker,scores={node.property.echo.difficulty=1..},tag=EchoNode] run team join Echo @n[type=minecraft:block_display,team=Hazard,tag=EchoDebugDisplay,distance=..3]

#====================================================================================================
# Reset seconds clock if necessary, after executing ALL other tick functions
#====================================================================================================
execute if score seconds.cooldown tick_counter matches ..0 run scoreboard players set seconds.cooldown tick_counter 20