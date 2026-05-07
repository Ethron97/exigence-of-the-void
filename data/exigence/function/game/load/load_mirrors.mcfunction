# Scheduled from start_loading_sequence
# Load treasure nodes

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Reset hidden blocks
execute in minecraft:overworld run function exigence:mirror/hidden_blocks/reset_hidden_blocks

# Setup all mirror blocks
execute in minecraft:overworld run function exigence:mirror/mirrors/setup_all_mirrors

# Setup all mirror nodes
execute in minecraft:overworld as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode] run function exigence:mirror/node/setup

# Setup shadow entities for players
execute in minecraft:overworld as @a[tag=Predungeon] run function exigence:mirror/reflection/setup_player_reflection
