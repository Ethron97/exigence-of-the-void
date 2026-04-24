# Removes card from deck

## INPUT
#   STR card_name

#====================================================================================================

#$say (D3) Remove card $(card_name)

$data modify storage exigence:give card_name set value $(card_name)
data modify storage exigence:give index set value 0

# Start iteration
execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] \
run function exigence:deck/post_process/remove_card_loop with storage exigence:give
