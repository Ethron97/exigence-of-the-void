# Save profile-level data on nodes

## CONSTRAINTS
#   AS profile node(s) (tag=Active)

#====================================================================================================

# Reached level
execute if score 2.reached game.level_doors matches 1 run scoreboard players add @s profile.data.winloss.reached_L2 1
execute if score 3.reached game.level_doors matches 1 run scoreboard players add @s profile.data.winloss.reached_L3 1
execute if score 4.reached game.level_doors matches 1 run scoreboard players add @s profile.data.winloss.reached_L4 1