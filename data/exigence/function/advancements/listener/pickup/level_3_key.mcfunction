#say pickup/level_3_key_key

# Reset advancement
advancement revoke @s only exigence:listener/pickup/level_3_key

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Replace key with give key
clear @s trial_key[custom_data={key_level:"3"}]
execute as @s run function exigence:player/give/level_3_key

# Call generic functions
function exigence:advancements/listener/pickup/level_key/generic

# Kill all level keys of the current active level
execute at @s as @e[type=minecraft:item,scores={game.entity.object_level=3},tag=LevelKey,distance=..1000] run kill @s

# Update got score
scoreboard players set 3.got_key game.level_doors 1

# Triumph
#function exigence:cards/triumph
