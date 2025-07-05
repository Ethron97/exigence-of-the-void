# Ensures that the necessary mirror entities exist for this player

## CONSTRAINTS
#   AS player
#   Assumes old entities have been removed

#=================================================================================================

# Summon reflection pieces
summon armor_stand -388.5 62.00 -245.5 {Tags:["L2","Reflection","Debug","NewMirrorEntity","MirrorEntity"],NoGravity:1,Invisible:1,NoBasePlate:1,Silent:1}
summon armor_stand -388.5 62.00 -245.5 {Tags:["L2","Rotation","Debug","NewMirrorEntity","MirrorEntity"],NoGravity:1,Invisible:1,NoBasePlate:1,Silent:1}
summon armor_stand -388.5 62.00 -245.5 {Tags:["L2","RotationReflection","Debug","NewMirrorEntity","MirrorEntity"],NoGravity:1,Invisible:1,NoBasePlate:1,Silent:1}

# Copy player id
scoreboard players operation @e[type=minecraft:armor_stand,tag=NewMirrorEntity] NodePlayerID = @s PlayerID

# Initialize random
scoreboard players add @e[type=minecraft:armor_stand,tag=NewMirrorEntity] Random 0

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=NewMirrorEntity] remove NewMirrorEntity
