# Replaces play.mcfunction
say [Start game with level 1 key]

# Functionality
execute as @a[tag=ActivePlayer] run function exigence:player/give/level_1_key
scoreboard players set 1.keys_to_drop game.level_doors 0
