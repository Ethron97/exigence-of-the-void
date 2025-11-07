# Root tick function

#=============================================================================================================

# === SECONDS CLOCK ===
# Update seconds cooldown. Most /tick/ functions have at least one function that relies on this.
# All queable systems resolve one queued item per second.
scoreboard players remove seconds.cooldown tick_counter 1

# If game is active, game tick
execute if data storage exigence:dungeon {is_active:1} run function exigence:game/game_tick
# If any players are in the hub dimension, hub tick
execute in exigence:hub positioned 0 200 0 if entity @a[distance=..2000] run function exigence:hub/hub_tick
# If tutorial is active, tutorial tick
execute if data storage exigence:dungeon {tutorial:1} in exigence:tutorial run function exigence:tutorial/tick

# Interaction handling
execute at @a as @e[distance=..16,type=minecraft:interaction] at @s run function exigence:misc/interaction/check_interaction


# Send to prologue (disabled for testing)
#execute as @a[advancements={exigence:story/root=false},tag=!Introducing] unless score @s career.prologue matches 1 in exigence:hub run function exigence:hub/prologue/enter


# TP eople stuck in the sky box (respawn broken for some reason)
execute positioned -376.5 318.00 -119.5 run tp @a[distance=..5] -260.5 17.00 -44.5

# Triggers
function exigence:misc/trigger_check

# DEPRECATED
#execute as @e[tag=UpdateCoords] run function exigence:misc/update_coords

# Temp testing
#function exigence:door/detect_keys
#function exigence:mirror/mirrors/detect_approaches


# Room ticks
function exigence:room/room_tick




# DEBUG
#=============================================================================================================
function exigence:hub/hub_tick/predicate_debug
# Update debug.node_counter automatically every second
execute store result storage exigence:debug current_level int 1 run scoreboard players get Ethron97 ObjectLevel
execute if data storage exigence:debug {void:1} if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_node_counter with storage exigence:debug

# Update vault node counter
execute if data storage exigence:debug {void:1} if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_vault_counter

# This is for difficulty setup
execute if data storage exigence:debug {echo:1} if score seconds.cooldown tick_counter matches 0 as @e[type=minecraft:armor_stand,tag=EchoNode,team=!ActiveEcho,scores={EchoDifficulty=0}] run team join Green @s
execute if data storage exigence:debug {echo:1} if score seconds.cooldown tick_counter matches 0 as @e[type=minecraft:armor_stand,tag=EchoNode,team=Green,scores={EchoDifficulty=1..}] run team join Echo @s

#=============================================================================================================
# Reset seconds clock if necessary, after executing ALL other tick functions
#=============================================================================================================
execute if score seconds.cooldown tick_counter matches ..0 run scoreboard players set seconds.cooldown tick_counter 20