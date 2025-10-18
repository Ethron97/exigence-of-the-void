# Teleports user to the Profile Data dimension

execute in exigence:profile_data run tp @s -8 16 -8 -45 0

# Reset trigger score
scoreboard players set @s TpProfileData 0

scoreboard players enable @s TpProfileData
