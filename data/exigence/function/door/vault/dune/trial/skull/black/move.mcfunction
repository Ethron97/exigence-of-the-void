# Called by each skull each tick
#   Moves skull forward and checks for player to lose

## CONSTRAINTS
#   AS skull with SkullTimer = 0

#====================================================================================================

## Home towards player (with turn radius)

# Move marker B to the skull, facing player
execute at @s facing entity @p[scores={game.player.vault_code=2},distance=..24] eyes run tp @e[type=minecraft:marker,tag=DunePosB,distance=..24,limit=1] ~ ~ ~ ~ ~


# Store rotations and normalize to 0..360
# Current skull rotation
execute store result score #skull_rot Temp run data get entity @s Rotation[0]
scoreboard players add #skull_rot Temp 180

# Facing player rotation
execute store result score #player_rot Temp run data get entity @e[type=minecraft:marker,tag=DunePosB,distance=..24,limit=1] Rotation[0]
scoreboard players add #player_rot Temp 180

# Get difference
scoreboard players operation #skull_rot Temp -= #player_rot Temp

# If abs value is >180, flip logic
scoreboard players operation #scale Temp = #skull_rot Temp
execute if score #scale Temp matches ..0 run scoreboard players operation #scale Temp *= -1 number
scoreboard players operation #scale Temp %= 360 number

# If positive, turn right
execute if score #scale Temp matches 180.. if score #skull_rot Temp matches 1.. at @s run tp @s ~ ~ ~ ~2 ~
# If negative, turn left
execute if score #scale Temp matches 180.. if score #skull_rot Temp matches ..-1 at @s run tp @s ~ ~ ~ ~-2 ~

# If positive, turn right
execute if score #scale Temp matches ..179 if score #skull_rot Temp matches 1.. at @s run tp @s ~ ~ ~ ~-2 ~
# If negative, turn left
execute if score #scale Temp matches ..179 if score #skull_rot Temp matches ..-1 at @s run tp @s ~ ~ ~ ~2 ~

#tellraw @a [{score:{name:"#scale",objective:"Temp"}},{text:" "},{score:{name:"#skull_rot",objective:"Temp"}}]

# Then forward
execute at @s run tp @s ^ ^ ^0.3

# Particle
execute at @s run particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0 3
execute at @s run particle minecraft:soul_fire_flame ^ ^ ^ 0.1 0.1 0.1 0.05 1

# If in block, kill
execute at @s unless block ~ ~ ~ air run kill @s[type=minecraft:item_display,tag=Black,tag=DuneSkull]
