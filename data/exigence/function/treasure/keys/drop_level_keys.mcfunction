say Drop level keys

# Reset tag
tag @e[type=minecraft:armor_stand,tag=KeyDropper] remove KeyDropper

execute if score Difficulty DungeonRun matches 2.. run scoreboard players operation #i Temp = 1.keys_to_drop game.level_doors
execute if score Difficulty DungeonRun matches 2.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_mirror_mine_keys

execute if score Difficulty DungeonRun matches 3.. run scoreboard players operation #i Temp = 2.keys_to_drop game.level_doors
execute if score Difficulty DungeonRun matches 3.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_temple_keys

execute if score Difficulty DungeonRun matches 4.. run scoreboard players operation #i Temp = 3.keys_to_drop game.level_doors
execute if score Difficulty DungeonRun matches 4.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_ardor_keys
