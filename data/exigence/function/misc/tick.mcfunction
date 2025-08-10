# === SECONDS CLOCK ===
# Update seconds cooldown. Most /tick/ functions have at least one function that relies on this.
# All queable systems resolve one queued item per second.
scoreboard players remove SecondsCooldown TickCounter 1

# If game is active, game tick
execute if data storage exigence:dungeon {is_active:1,tutorial:0} run function exigence:game/game_tick
execute if data storage exigence:dungeon {is_active:0,tutorial:0} run function exigence:hub/hub_tick
execute if data storage exigence:dungeon {is_active:0,tutorial:1} in exigence:tutorial run function exigence:tutorial/tick

# Interaction handling
execute as @e[type=minecraft:interaction] run function exigence:misc/interaction/check_interaction

# Temp fix for prologue, give root advancements to all players
advancement grant @a[advancements={exigence:story/root=false}] only exigence:story/root


# Constantly and always update player coordinates
# DEPRECATED (and laggy)
#execute as @a store result score @s PlayerX run data get entity @s Pos[0] 1
#execute as @a store result score @s PlayerY run data get entity @s Pos[1] 1
#execute as @a store result score @s PlayerZ run data get entity @s Pos[2] 1



# TP eople stuck in the sky box (respawn broken for some reason)
execute positioned -376.5 318.00 -119.5 run tp @a[distance=..5] -260.5 17.00 -44.5

# Triggers
function exigence:misc/trigger_check

# DEPRECATED
#execute as @e[tag=UpdateCoords] run function exigence:misc/update_coords

# Temp testing
#function exigence:door/detect_keys
#function exigence:player/effects/player_effect_tick
#function exigence:mirror/mirrors/detect_approaches


# Room ticks
function exigence:room/room_tick


# Reset seconds clock if necessary, after executing game/hub tick functions
execute if score SecondsCooldown TickCounter matches 0 run scoreboard players set SecondsCooldown TickCounter 20



