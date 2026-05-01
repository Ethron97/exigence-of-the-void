# Scheduled from start_loading_sequence

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

scoreboard players set 1.keys_to_drop game.level_doors 0
scoreboard players set 2.keys_to_drop game.level_doors 0
scoreboard players set 3.keys_to_drop game.level_doors 0

# Reset keys so it doesn't drop from cards etc unless needed
execute if score game.difficulty game.state matches 2.. run scoreboard players set 1.keys_to_drop game.level_doors 1
execute if score game.difficulty game.state matches 3.. run scoreboard players set 2.keys_to_drop game.level_doors 1
execute if score game.difficulty game.state matches 4.. run scoreboard players set 3.keys_to_drop game.level_doors 1

execute in minecraft:overworld run function exigence:door/level/reset_doors

execute in minecraft:overworld run function exigence:treasure/keys/drop_level_keys