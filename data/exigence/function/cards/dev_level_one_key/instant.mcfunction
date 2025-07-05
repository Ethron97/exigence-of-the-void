# Replaces play.mcfunction
say [Start game with level 1 key]

# Functionality
execute as @a[tag=ActivePlayer] run function exigence:player/give/level_1_key
scoreboard players set MirrorMineKeys DungeonRun 0
