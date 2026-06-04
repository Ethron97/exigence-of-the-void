# So we can slowly unload things without causing a lag spike on exit

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say Tried start unloading sequence from not overworld?
#----------------------------------------------------------------------------------------------------

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Start UNloading sequence

# TODO prevent players from trying to enter the dungeon while unloading, we don't know how long this will take

# We'll schedule later

# Reset max menace
function exigence:menace/reset_max_menace

function exigence:deck/return_deck
kill @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card]

# Unload exits
function exigence:game/unload/unload_exits

# Unload echos
function exigence:game/unload/unload_echos

# Reset berry nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive
# Reset bell nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BellNode] at @s run function exigence:bell/node/deactivate
# Reset altar nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=AltarNode] at @s run function exigence:altar/node/deactivate
# Reset menace nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode] at @s run function exigence:menace/node/reset
# Reset beacon nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BeaconNode] at @s run function exigence:beacon/node/setup/deactivate
# Unload variance/hazard tags
function exigence:game/unload/unload_variance_and_hazard
# Reset vault nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VaultNode] at @s run function exigence:vault/node/unload

# Kill all items (in dungeon)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item] run kill @s

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

# Reset bookshelf on principal
fill -481 62 -200 -473 64 -200 minecraft:chiseled_bookshelf[facing=south]

# Unload bossbars
function exigence:game/unload/unload_bossbars

# Unload wards
function exigence:game/unload/unload_wards

# Cleanup waypoints
execute positioned 0 0 0 run kill @e[type=minecraft:armor_stand,tag=Waypoint,distance=..1000]

# Unload tags from profiledata? #TODO

# Unload entities
function exigence:game/unload/unload_entities

# Reset web ball related stuff
function exigence:hub/item_shop/item/item_web_ball/reset

# Set time to night
time set 18000

# Reset load cancel so we can
#scoreboard players set game.cancel_load hub.room_misc 0