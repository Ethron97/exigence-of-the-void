execute store result score Player.X game.mirror.old_math run data get entity BigBlaster10 Pos[0] 1000
execute store result score Player.Z game.mirror.old_math run data get entity BigBlaster10 Pos[2] 1000
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run execute store result score Node.X game.mirror.old_math run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run execute store result score Node.Z game.mirror.old_math run data get entity @s Pos[2] 1000



# 1. Rotate
# 2. Mirror
# 3. UnRotate

# 1. Rotate coords to normalize against a the X axis
# Initalize variables in hidden variables
scoreboard players operation #XCosA_player_temp game.mirror.old_math = PlayerX game.mirror.old_math
scoreboard players operation #XSinA_player_temp game.mirror.old_math = PlayerX game.mirror.old_math
scoreboard players operation #ZCosA_player_temp game.mirror.old_math = PlayerZ game.mirror.old_math
scoreboard players operation #ZSinA_player_temp game.mirror.old_math = PlayerZ game.mirror.old_math

scoreboard players operation #XCosA_node_temp game.mirror.old_math = NodeX game.mirror.old_math
scoreboard players operation #XSinA_node_temp game.mirror.old_math = NodeX game.mirror.old_math
scoreboard players operation #ZCosA_node_temp game.mirror.old_math = NodeZ game.mirror.old_math
scoreboard players operation #ZSinA_node_temp game.mirror.old_math = NodeZ game.mirror.old_math

# Multiply
scoreboard players operation #XCosA_player_temp game.mirror.old_math *= CosA game.mirror.old_math
scoreboard players operation #XSinA_player_temp game.mirror.old_math *= SinA game.mirror.old_math
scoreboard players operation #ZCosA_player_temp game.mirror.old_math *= CosA game.mirror.old_math
scoreboard players operation #ZSinA_player_temp game.mirror.old_math *= SinA game.mirror.old_math

scoreboard players operation #XCosA_node_temp game.mirror.old_math *= CosA game.mirror.old_math
scoreboard players operation #XSinA_node_temp game.mirror.old_math *= SinA game.mirror.old_math
scoreboard players operation #ZCosA_node_temp game.mirror.old_math *= CosA game.mirror.old_math
scoreboard players operation #ZSinA_node_temp game.mirror.old_math *= SinA game.mirror.old_math

# Put it all together in final X and Y position:
scoreboard players operation #XCosA_player_temp game.mirror.old_math -= #ZSinA_player_temp game.mirror.old_math
scoreboard players operation #ZCosA_player_temp game.mirror.old_math += #XSinA_player_temp game.mirror.old_math

scoreboard players operation #XCosA_node_temp game.mirror.old_math -= #ZSinA_node_temp game.mirror.old_math
scoreboard players operation #ZCosA_node_temp game.mirror.old_math += #XSinA_node_temp game.mirror.old_math


# 2. Scale and mirror
scoreboard players operation #OffsetX game.mirror.old_math = #XCosA_node_temp game.mirror.old_math
scoreboard players operation #OffsetZ game.mirror.old_math = #ZCosA_node_temp game.mirror.old_math

# Teleport armorstand to location (debug)
execute store result entity 41d88a2c-6f9b-4452-8971-749c4ec497f8 Pos[0] double 0.000001 run scoreboard players get #OffsetX game.mirror.old_math
execute store result entity 41d88a2c-6f9b-4452-8971-749c4ec497f8 Pos[2] double 0.000001 run scoreboard players get #OffsetZ game.mirror.old_math

scoreboard players operation #OffsetX game.mirror.old_math = #XCosA_player_temp game.mirror.old_math
scoreboard players operation #OffsetZ game.mirror.old_math -= #ZCosA_player_temp game.mirror.old_math

#scoreboard players set #fixed_05 game.mirror.old_math 500000
#scoreboard players operation #OffsetZ game.mirror.old_math += #fixed_05 game.mirror.old_math

#75e0d581-4522-47f4-8598-0653038fde71 (debug)
execute store result entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[0] double 0.000001 run scoreboard players get #OffsetX game.mirror.old_math
execute store result entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[2] double 0.000001 run scoreboard players get #OffsetZ game.mirror.old_math



execute store result score #PreRotateX game.mirror.old_math run data get entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[0] 1000
execute store result score #PreRotateZ game.mirror.old_math run data get entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[2] 1000

# 3. Re-rotate
scoreboard players operation #XCosA_shadow_temp game.mirror.old_math = #PreRotateX game.mirror.old_math
scoreboard players operation #XSinA_shadow_temp game.mirror.old_math = #PreRotateX game.mirror.old_math
scoreboard players operation #ZCosA_shadow_temp game.mirror.old_math = #PreRotateZ game.mirror.old_math
scoreboard players operation #ZSinA_shadow_temp game.mirror.old_math = #PreRotateZ game.mirror.old_math

scoreboard players operation #XCosA_shadow_temp game.mirror.old_math *= Cos-A game.mirror.old_math
scoreboard players operation #XSinA_shadow_temp game.mirror.old_math *= Sin-A game.mirror.old_math
scoreboard players operation #ZCosA_shadow_temp game.mirror.old_math *= Cos-A game.mirror.old_math
scoreboard players operation #ZSinA_shadow_temp game.mirror.old_math *= Sin-A game.mirror.old_math

scoreboard players operation #XCosA_shadow_temp game.mirror.old_math -= #ZSinA_shadow_temp game.mirror.old_math
scoreboard players operation #ZCosA_shadow_temp game.mirror.old_math += #XSinA_shadow_temp game.mirror.old_math

# Teleport armorstand to location
execute store result entity 7fa23b10-04c1-42bf-8de4-ea582dd55a23 Pos[0] double 0.000001 run scoreboard players get #XCosA_shadow_temp game.mirror.old_math
execute store result entity 7fa23b10-04c1-42bf-8de4-ea582dd55a23 Pos[2] double 0.000001 run scoreboard players get #ZCosA_shadow_temp game.mirror.old_math




# Update pose to make sure data exists
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run data modify entity @s Pose.Head set from storage temp Head

# Update pose to match rotation
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]