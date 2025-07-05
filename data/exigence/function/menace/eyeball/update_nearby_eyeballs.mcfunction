# Update players "NearbyEyeballs" score

# Reset to 0
scoreboard players set @s NearbyEyeballs 0

# Increment by 1 for each nearby eyeball
execute at @s run execute at @e[distance=..20,type=minecraft:armor_stand,tag=Eyeball] run scoreboard players add @s NearbyEyeballs 1