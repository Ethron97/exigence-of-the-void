# Replaces play.mcfunction
say [Start game with 1 of each key]

# Functionality
execute as @a[tag=ActivePlayer] run function exigence:player/give/level_1_key

execute as @a[tag=ActivePlayer] run function exigence:player/give/level_2_key

execute as @a[tag=ActivePlayer] run function exigence:player/give/level_3_key

# Kill dropped level keys
execute in minecraft:overworld run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=LevelKey]

# Mark all keys as "got"
scoreboard players set 1.got_key game.level_doors 1
scoreboard players set 2.got_key game.level_doors 1
scoreboard players set 3.got_key game.level_doors 1