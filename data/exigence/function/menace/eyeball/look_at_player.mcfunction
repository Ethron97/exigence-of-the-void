# Makes this armorstand look at the nearest active player
execute as @s at @s anchored eyes facing entity @p[tag=ActivePlayer,scores={dead=0}] eyes run tp @s ~ ~ ~ ~ ~

# FOR THE VERTICAL HEAD MOVEMENT:
# Update pose to make sure data exists
execute as @s run data modify entity @s Pose.Head set from storage temp Head

# Update pose to match rotation
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]