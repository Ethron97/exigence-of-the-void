#say pickup/level_1_key_key
advancement revoke @s only exigence:listener/pickup/level_1_key

# Return 1 if game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Replace key with give key
clear @s trial_key[custom_data={key_level:"1"}]
execute as @s run function exigence:player/give/level_1_key

# Call generic functions
function exigence:advancements/listener/pickup/level_key_generic

# Kill all level keys of the current active level
execute as @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=1}] run kill @s

# Update got score
scoreboard players set GotMirrorMineKey DungeonRun 1

# Triumph
#function exigence:cards/triumph
