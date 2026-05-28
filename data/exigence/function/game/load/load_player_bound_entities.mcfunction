# Scheduled from start_loading_sequence
# Load player warp previews / hand holders / etc

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Kill all player bound entities
#   Warp preview, mirror reflection, player armorstand
execute as @e[tag=PlayerBound] run function exigence:player/utility/unload_player_bound

# Teleport preview, mirror reflection, player armorstand
execute as @a[tag=Predungeon] in minecraft:overworld run function exigence:player/utility/setup_all_player_bound
