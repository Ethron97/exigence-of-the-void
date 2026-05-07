# Scheduled from start_loading_sequence

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Setup bookshelf nodes
execute in minecraft:overworld run function exigence:mirror/bookshelf/activate_bookshelf_nodes

# Load THE bookshelf
execute in minecraft:overworld run function exigence:mirror/bookshelf/load_bookshelf
