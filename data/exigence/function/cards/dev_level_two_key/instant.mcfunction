# Replaces play.mcfunction
say [Start game with level 2 key]

# Functionality
execute as @a[tag=ActivePlayer] run function exigence:player/give/level_2_key
scoreboard players set 2.keys_to_drop game.level_doors 0


