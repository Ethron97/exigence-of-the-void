# So we can slowly unload things without causing a lag spike on exit

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say Tried start unloading sequence from not overworld?
#----------------------------------------------------------------------------------------------------
# We'll schedule later, if needed

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Start UNloading sequence

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



function exigence:deck/return_deck
kill @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card]

# Unload exits
function exigence:game/unload/unload_exits

# Reset beacon nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BeaconNode] at @s run function exigence:beacon/node/setup/deactivate

# Close doors
function exigence:door/level/reset_doors

# Cleanup npcs
function exigence:npc/game/reset_npcs

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/respawn_ravager_glass

# Save profile-level data
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run function exigence:game/unload/save_data_to_profile_node
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] run function exigence:game/unload/save_data_to_profile_nodes

# Reset bookshelf on principal
fill -481 62 -200 -473 64 -200 minecraft:chiseled_bookshelf[facing=south]

# Unload bossbars
function exigence:game/unload/unload_bossbars

# Unload wards
function exigence:game/unload/unload_wards

# Unload tags from profiledata? #TODO

# Set time to night
time set 18000

# Reset sidebars
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_red

# Reset load cancel so we can
#scoreboard players set game.cancel_load hub.room_misc 0