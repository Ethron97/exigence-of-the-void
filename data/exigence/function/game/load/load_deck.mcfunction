# Scheduled from start_loading_sequence

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run function exigence:deck/process/process_deck