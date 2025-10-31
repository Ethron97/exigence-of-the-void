# Called by each skull each tick
#   Moves skull forward and checks for player to lose

## CONSTRAINTS
#   AS skull with SkullTimer = 0

#========================================================================================================

## Home towards player (with turn radius)

# Move marker B to the skull, facing player
execute at @s facing entity @p[tag=ActivePlayer,scores={dead=0,game.player.vault_code=2}] eyes run tp @e[type=marker,tag=DunePosB] ~ ~ ~ ~ ~


# Store rotations and normalize to 0..360
execute store result score #skull_rot Temp run data get entity @s Rotation[0]
scoreboard players add #skull_rot Temp 180

execute store result score #player_rot Temp run data get entity @e[type=marker,tag=DunePosB,limit=1] Rotation[0]
scoreboard players add #player_rot Temp 180

# Get difference
scoreboard players operation #skull_rot Temp -= #player_rot Temp

# If positive, turn right
execute if score #skull_rot Temp matches 1.. at @s run tp @s ~ ~ ~ ~-2 ~

# If negative, turn left
execute if score #skull_rot Temp matches ..-1 at @s run tp @s ~ ~ ~ ~2 ~

# Then forward
execute at @s run tp @s ^ ^ ^0.3

# Particle
execute at @s run particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0 3
execute at @s run particle minecraft:soul_fire_flame ^ ^ ^ 0.2 0.1 0.2 0 1

# If in block, kill
execute at @s unless block ~ ~ ~ air run kill @s[type=item_display,tag=Black,tag=DuneSkull]
