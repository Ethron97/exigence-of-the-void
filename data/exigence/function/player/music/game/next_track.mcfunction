# Reset this player's music

## CONSTRAINTS
#   AS player

#====================================================================================================

# Randomize new track

execute store result score random Random run random value 1..3

execute if score random Random matches 1 run playsound minecraft:music.nether.basalt_deltas record @s ~ ~1000 ~ 1000
execute if score random Random matches 1 run scoreboard players set @s game.player.track_length 6600

execute if score random Random matches 2 run playsound minecraft:music.nether.crimson_forest record @s ~ ~1000 ~ 1000
execute if score random Random matches 2 run scoreboard players set @s game.player.track_length 6600

execute if score random Random matches 3 run playsound minecraft:music.nether.nether_wastes record @s ~ ~1000 ~ 1000
execute if score random Random matches 3 run scoreboard players set @s game.player.track_length 6600

#execute if score random Random matches 1 run playsound minecraft:music.nether.soul_sand_valley record @s ~ ~1000 ~ 1000
#scoreboard players set @s game.player.track_length 6600
