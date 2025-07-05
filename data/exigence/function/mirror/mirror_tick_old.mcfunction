execute store result score PlayerX MirrorMath run data get entity BigBlaster10 Pos[0] 1000
execute store result score PlayerZ MirrorMath run data get entity BigBlaster10 Pos[2] 1000
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run execute store result score NodeX MirrorMath run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run execute store result score NodeZ MirrorMath run data get entity @s Pos[2] 1000



# 1. Rotate
# 2. Mirror
# 3. UnRotate

# 1. Rotate coords to normalize against a the X axis
# Initalize variables in hidden variables
scoreboard players operation #XCosA_player_temp MirrorMath = PlayerX MirrorMath
scoreboard players operation #XSinA_player_temp MirrorMath = PlayerX MirrorMath
scoreboard players operation #ZCosA_player_temp MirrorMath = PlayerZ MirrorMath
scoreboard players operation #ZSinA_player_temp MirrorMath = PlayerZ MirrorMath

scoreboard players operation #XCosA_node_temp MirrorMath = NodeX MirrorMath
scoreboard players operation #XSinA_node_temp MirrorMath = NodeX MirrorMath
scoreboard players operation #ZCosA_node_temp MirrorMath = NodeZ MirrorMath
scoreboard players operation #ZSinA_node_temp MirrorMath = NodeZ MirrorMath

# Multiply
scoreboard players operation #XCosA_player_temp MirrorMath *= CosA MirrorMath
scoreboard players operation #XSinA_player_temp MirrorMath *= SinA MirrorMath
scoreboard players operation #ZCosA_player_temp MirrorMath *= CosA MirrorMath
scoreboard players operation #ZSinA_player_temp MirrorMath *= SinA MirrorMath

scoreboard players operation #XCosA_node_temp MirrorMath *= CosA MirrorMath
scoreboard players operation #XSinA_node_temp MirrorMath *= SinA MirrorMath
scoreboard players operation #ZCosA_node_temp MirrorMath *= CosA MirrorMath
scoreboard players operation #ZSinA_node_temp MirrorMath *= SinA MirrorMath

# Put it all together in final X and Y position:
scoreboard players operation #XCosA_player_temp MirrorMath -= #ZSinA_player_temp MirrorMath
scoreboard players operation #ZCosA_player_temp MirrorMath += #XSinA_player_temp MirrorMath

scoreboard players operation #XCosA_node_temp MirrorMath -= #ZSinA_node_temp MirrorMath
scoreboard players operation #ZCosA_node_temp MirrorMath += #XSinA_node_temp MirrorMath


# 2. Scale and mirror
scoreboard players operation #OffsetX MirrorMath = #XCosA_node_temp MirrorMath
scoreboard players operation #OffsetZ MirrorMath = #ZCosA_node_temp MirrorMath

# Teleport armorstand to location (debug)
execute store result entity 41d88a2c-6f9b-4452-8971-749c4ec497f8 Pos[0] double 0.000001 run scoreboard players get #OffsetX MirrorMath
execute store result entity 41d88a2c-6f9b-4452-8971-749c4ec497f8 Pos[2] double 0.000001 run scoreboard players get #OffsetZ MirrorMath

scoreboard players operation #OffsetX MirrorMath = #XCosA_player_temp MirrorMath
scoreboard players operation #OffsetZ MirrorMath -= #ZCosA_player_temp MirrorMath

#scoreboard players set #fixed_05 MirrorMath 500000
#scoreboard players operation #OffsetZ MirrorMath += #fixed_05 MirrorMath

#75e0d581-4522-47f4-8598-0653038fde71 (debug)
execute store result entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[0] double 0.000001 run scoreboard players get #OffsetX MirrorMath
execute store result entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[2] double 0.000001 run scoreboard players get #OffsetZ MirrorMath



execute store result score #PreRotateX MirrorMath run data get entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[0] 1000
execute store result score #PreRotateZ MirrorMath run data get entity 75e0d581-4522-47f4-8598-0653038fde71 Pos[2] 1000

# 3. Re-rotate
scoreboard players operation #XCosA_shadow_temp MirrorMath = #PreRotateX MirrorMath
scoreboard players operation #XSinA_shadow_temp MirrorMath = #PreRotateX MirrorMath
scoreboard players operation #ZCosA_shadow_temp MirrorMath = #PreRotateZ MirrorMath
scoreboard players operation #ZSinA_shadow_temp MirrorMath = #PreRotateZ MirrorMath

scoreboard players operation #XCosA_shadow_temp MirrorMath *= Cos-A MirrorMath
scoreboard players operation #XSinA_shadow_temp MirrorMath *= Sin-A MirrorMath
scoreboard players operation #ZCosA_shadow_temp MirrorMath *= Cos-A MirrorMath
scoreboard players operation #ZSinA_shadow_temp MirrorMath *= Sin-A MirrorMath

scoreboard players operation #XCosA_shadow_temp MirrorMath -= #ZSinA_shadow_temp MirrorMath
scoreboard players operation #ZCosA_shadow_temp MirrorMath += #XSinA_shadow_temp MirrorMath

# Teleport armorstand to location
execute store result entity 7fa23b10-04c1-42bf-8de4-ea582dd55a23 Pos[0] double 0.000001 run scoreboard players get #XCosA_shadow_temp MirrorMath
execute store result entity 7fa23b10-04c1-42bf-8de4-ea582dd55a23 Pos[2] double 0.000001 run scoreboard players get #ZCosA_shadow_temp MirrorMath




# Update pose to make sure data exists
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run data modify entity @s Pose.Head set from storage temp Head

# Update pose to match rotation
execute as @e[type=minecraft:armor_stand,tag=MirrorNode] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]