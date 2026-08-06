# Shared functions between loss and win

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say (C) game_off not in overworld
#----------------------------------------------------------------------------------------------------

execute if score toggle.game debug matches 1 if score debug.level debug matches 2.. run say (D2 Game) Game Off

scoreboard players set game.is_active game.state 0

# Just in case the game ended while it was still loading
scoreboard players set game.cancel_load hub.room_misc 1

# Queue coin conversion
tag @a[tag=ActivePlayer] add QueueCoinConversion
# Reset coin conversion scores
scoreboard players set coins.converting hub.coin_conversion 0
scoreboard players set coins.leftover hub.coin_conversion 0
scoreboard players set #coins.leftover hub.coin_conversion 0

# Force player leaves
execute as @a[tag=ActivePlayer] run function exigence:game/access/leave

# If there are any trials in progress, force-lose
execute if score game.bolt.trial trial.status matches 1 positioned -413.5 152.0 -17.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..3] run function exigence:door/vault/bolt/trial/loss
execute if score game.dune.trial trial.status matches 1 positioned -413.5 152.0 -1.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..3] run function exigence:door/vault/dune/trial/loss
execute if score game.silence.trial trial.status matches 1 positioned -413.5 152.0 14.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Silence,distance=..3] run function exigence:door/vault/silence/trial/loss
execute if score game.eye.trial trial.status matches 1 positioned -355.5 152.0 6.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,distance=..3] run function exigence:door/vault/eye/trial/loss
execute if score game.spire.trial trial.status matches 1 positioned -355.5 152.0 -9.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..3] run function exigence:door/vault/spire/trial/loss
execute if score game.flow.trial trial.status matches 1 positioned -355.5 152.0 -25.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Flow,distance=..3] run function exigence:door/vault/flow/trial/loss

# Coin convert
scoreboard players operation coins.leftover hub.coin_conversion = #coins.leftover hub.coin_conversion

# Start unload
execute positioned -300 0 -300 run function exigence:game/unload/start_unloading_sequence

# DEBUG/TESTING
# Add all ravagers to player's team so they stop tracking
team join Spectator @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager]
# Silence mobs so they stop annoying me while I work on the game.
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Silence] run data modify entity @s Silent set value true
