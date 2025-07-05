# Summons eyeball at location where function is called

# Summon armorstand at player location
summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Tags:["Eyeball","Traveling","NewEyeball"],Small:1b,Invisible:1b,Marker:0b,DisabledSlots:4144959}

# Initialize pose
execute as @e[type=minecraft:armor_stand,tag=NewEyeball] run data modify entity @s Pose.Head set from storage temp Head

# Randomize rotation
execute store result storage temp Rotation[0] float 1 run random value -180..180
execute store result storage temp Rotation[1] float 1 run random value -10..15

execute as @e[type=minecraft:armor_stand,tag=NewEyeball] run data modify entity @s Rotation set from storage temp Rotation
# Set pose as same as facing
execute as @e[type=minecraft:armor_stand,tag=NewEyeball] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

# Remove local tag
execute as @e[type=minecraft:armor_stand,tag=NewEyeball] run tag @s remove NewEyeball
