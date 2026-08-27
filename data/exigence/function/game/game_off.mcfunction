# Shared functions between loss and win
#   Stuff that needs to happen before the players actually leave, in the case of campaign win

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say (C) game_off not in overworld
#----------------------------------------------------------------------------------------------------

execute if score toggle.game debug matches 1 if score debug.level debug matches 2.. run say (D2 Game) Game Off

scoreboard players set game.is_active game.state 0

# If there are any trials in progress, force-lose
execute if score game.bolt.trial trial.status matches 1 positioned -413.5 152.0 -17.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..3] run function exigence:door/vault/bolt/trial/loss
execute if score game.dune.trial trial.status matches 1 positioned -413.5 152.0 -1.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..3] run function exigence:door/vault/dune/trial/loss
execute if score game.silence.trial trial.status matches 1 positioned -413.5 152.0 14.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Silence,distance=..3] run function exigence:door/vault/silence/trial/loss
execute if score game.eye.trial trial.status matches 1 positioned -355.5 152.0 6.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,distance=..3] run function exigence:door/vault/eye/trial/loss
execute if score game.spire.trial trial.status matches 1 positioned -355.5 152.0 -9.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..3] run function exigence:door/vault/spire/trial/loss
execute if score game.flow.trial trial.status matches 1 positioned -355.5 152.0 -25.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Flow,distance=..3] run function exigence:door/vault/flow/trial/loss

# Kill all items (in dungeon)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item] run kill @s

# Reset max menace
function exigence:menace/reset_max_menace

# Unload echos
function exigence:game/unload/unload_echos

# Cleanup waypoints
execute positioned 0 0 0 run kill @e[type=minecraft:armor_stand,tag=Waypoint,distance=..1000]

# Reset berry nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive
# Reset bell nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BellNode] at @s run function exigence:bell/node/deactivate
# Reset altar nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=AltarNode] at @s run function exigence:altar/node/deactivate
# Reset menace nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode] at @s run function exigence:menace/node/reset
# Unload variance/hazard tags
function exigence:game/unload/unload_variance_and_hazard
# Reset vault nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VaultNode] at @s run function exigence:vault/node/unload

# Reset web ball related stuff
function exigence:hub/item_shop/item/item_web_ball/reset

# Unload entities
function exigence:game/unload/unload_entities

# Kill clock markers
execute positioned 0 0 0 run kill @e[type=minecraft:marker,tag=ClockMarker,distance=..1000]

# DEBUG/TESTING
# Add all ravagers to player's team so they stop tracking
#team join Player @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager]
# Silence mobs so they stop annoying me while I work on the game.
#execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Silence] run data modify entity @s Silent set value true
