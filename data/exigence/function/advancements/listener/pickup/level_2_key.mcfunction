#say pickup/level_2_key_key

# Reset advancement
advancement revoke @s only exigence:listener/pickup/level_2_key

# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Replace key with give key
clear @s trial_key[custom_data={key_level:"2"}]
execute as @s run function exigence:player/give/level_2_key

# Call generic functions
function exigence:advancements/listener/pickup/level_key_generic

# Kill all level keys of the current active level
execute as @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=2}] run kill @s

# Update got score
scoreboard players set GotTempleOfFervorKey DungeonRun 1

# Triumph
#function exigence:cards/triumph
