# So we can slowly unload things without causing a lag spike on exit

#====================================================================================================

#say (D3) Start UNloading sequence

# TODO prevent players from trying to enter the dungeon while unloading, we don't know how long this will take

# We'll schedule later

# Unload exits
function exigence:game/unload/unload_exits

# Unload echos
function exigence:game/unload/unload_echos

# Reset berry nodes
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive
# Reset bell nodes
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BellNode] at @s run function exigence:bell/node/deactivate
# Reset altar nodes
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=AltarNode] at @s run function exigence:altar/node/deactivate

# Kill all items
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item] run kill @s

# Close doors
execute in minecraft:overworld run function exigence:door/level/reset_doors

# Cleanup npcs
execute in minecraft:overworld run function exigence:npc/game/reset_npcs

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks
# Kill old entities
kill @e[type=minecraft:armor_stand,tag=MirrorEntity]

# Save bookshelf
execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest,limit=1] run function exigence:profile/profile_node/save/save_bookshelf
# Reset bookshelf on principal
fill -481 62 -200 -473 64 -200 minecraft:chiseled_bookshelf[facing=south]

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/respawn_ravager_glass

# Unload variance/hazard tags
function exigence:game/unload/unload_variance_and_hazard

# Save puzzle candle progress
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run scoreboard players operation @s profile.story.puzzle_candles = game.puzzle_candles game.dungeon


# Unload tags from profiledata? #TODO