say Drop level keys

# Reset tag
tag @e[type=minecraft:armor_stand,tag=KeyDropper] remove KeyDropper

execute if score Difficulty DungeonRun matches 2.. run scoreboard players operation #i DungeonRun = MirrorMineKeys DungeonRun
execute if score Difficulty DungeonRun matches 2.. if score #i DungeonRun matches 1.. run function exigence:treasure/keys/drop_mirror_mine_keys

execute if score Difficulty DungeonRun matches 3.. run scoreboard players operation #i DungeonRun = TempleOfFervorKeys DungeonRun
execute if score Difficulty DungeonRun matches 3.. if score #i DungeonRun matches 1.. run function exigence:treasure/keys/drop_temple_keys

execute if score Difficulty DungeonRun matches 4.. run scoreboard players operation #i DungeonRun = ArdorsBaneKeys DungeonRun
execute if score Difficulty DungeonRun matches 4.. if score #i DungeonRun matches 1.. run function exigence:treasure/keys/drop_ardor_keys
