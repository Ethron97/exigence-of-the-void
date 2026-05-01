# Scheduled from start_loading_sequence
# Load altars

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Get puzzle candle level
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run scoreboard players operation game.puzzle_candles game.dungeon = @s profile.story.puzzle_candles

execute in minecraft:overworld run function exigence:altar/activate_altar_nodes
