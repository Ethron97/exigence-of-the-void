# Root tick function

#====================================================================================================

# === SECONDS CLOCK ===
# Update seconds cooldown. Most /tick/ functions have at least one function that relies on this.
# All queable systems resolve one queued item per second.
scoreboard players remove seconds.cooldown tick_counter 1

# Profile ticks (check for player online/offline)
function exigence:profile/profile_tick

# If game is active, game tick
execute in minecraft:overworld if score game.is_active game.state matches 1 run function exigence:game/game_tick/game_tick
# If any players are in the hub dimension, hub tick
execute in exigence:hub positioned 0 200 0 if entity @a[distance=..2000,limit=1] run function exigence:hub/hub_tick
# If tutorial is active, tutorial tick
execute in exigence:tutorial if score tut.active hub.tutorial matches 1 run function exigence:tutorial/tick

# Interaction handling
execute at @a as @e[type=minecraft:interaction,distance=..8] at @s run function exigence:misc/interaction/check_interaction

# Send to prologue (disabled for testing)
#execute as @a[advancements={exigence:story/root=false},tag=!Introducing] unless score @s career.prologue matches 1 in exigence:hub run function exigence:hub/prologue/enter

# TP eople stuck in the sky box (respawn broken for some reason)
#execute positioned -376.5 318.00 -119.5 run tp @a[distance=..5] -260.5 17.00 -44.5

# Triggers
execute as @a run function exigence:misc/triggers/trigger_check

# DEPRECATED
#execute as @e[tag=UpdateCoords] run function exigence:misc/update_coords

# Room ticks
execute in exigence:hub run function exigence:room/room_tick

# DEBUG
#====================================================================================================
# Position debug
execute as @a[tag=Admin,tag=!ActivePlayer] run function exigence:misc/predicate_debug
# Update debug.node_counter automatically every second
execute store result storage exigence:debug current_level int 1 run scoreboard players get Ethron97 ObjectLevel
execute if score toggle.void debug matches 1 if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_node_counter with storage exigence:debug

# Update vault node counter
execute if score toggle.void debug matches 1 if score seconds.cooldown tick_counter matches 0 run function exigence:misc/update_vault_counter

# This is for difficulty setup
execute if score toggle.echo debug matches 1 if score seconds.cooldown tick_counter matches 0 at @e[type=minecraft:marker,scores={node.property.echo.difficulty=0},tag=EchoNode] run team join Hazard @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]
execute if score toggle.echo debug matches 1 if score seconds.cooldown tick_counter matches 0 at @e[type=minecraft:marker,scores={node.property.echo.difficulty=1..},tag=EchoNode] run team join Echo @n[type=minecraft:block_display,team=Hazard,tag=EchoDebugDisplay,distance=..3]

# Fun
execute as @e[type=minecraft:mannequin,tag=Dance] at @s run function exigence:misc/entity/mannequin_fun

# Double check FULL boundary
execute in minecraft:overworld if score debug.level debug matches 1.. if score seconds.cooldown tick_counter matches 18 positioned -380 39 -109 as @e[distance=..1000,type=!player] unless entity @s[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345] run say I am outside the FULL game boundary

#====================================================================================================
# Reset seconds clock if necessary, after executing ALL other tick functions
#====================================================================================================
execute if score seconds.cooldown tick_counter matches ..0 run scoreboard players set seconds.cooldown tick_counter 20