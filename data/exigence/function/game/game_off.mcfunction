# Shared functions between loss and win

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

say (D3) Game Off

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

# Coin convert
scoreboard players operation coins.leftover hub.coin_conversion = #coins.leftover hub.coin_conversion

# Start unload
function exigence:game/unload/start_unloading_sequence

# DEBUG/TESTING
# Add all ravagers to player's team so they stop tracking
team join Spectator @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager]
# Silence mobs so they stop annoying me while I work on the game.
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Silence] run data modify entity @s Silent set value true
