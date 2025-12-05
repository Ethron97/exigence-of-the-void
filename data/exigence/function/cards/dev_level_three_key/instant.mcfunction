# Replaces play.mcfunction
say [Start game with level 3 key]

# Functionality
execute as @a[tag=ActivePlayer] run function exigence:player/give/level_3_key
scoreboard players set 3.keys_to_drop game.level_doors 0


