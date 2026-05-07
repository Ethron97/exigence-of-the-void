# Scheduled from start_loading_sequence
# Load deck

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Ensure all cards are dead
execute in minecraft:overworld run kill @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card]

execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run function exigence:deck/process/process_deck