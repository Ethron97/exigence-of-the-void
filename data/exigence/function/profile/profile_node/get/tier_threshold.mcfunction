# Get tier unlock threshold based on progression of profile

## CONSTRAINTS
#   AS profile node

## OUTPUT
#   SCORE #tier Temp

#====================================================================================================

scoreboard players set #tier Temp 0
execute if score @s profile.story.adv.win_difficulty_1 matches 1 run scoreboard players set #tier Temp 1
execute if score @s profile.story.adv.rescue_supplier matches 1 run scoreboard players set #tier Temp 2
execute if score @s profile.story.adv.win_difficulty_2 matches 1 run scoreboard players set #tier Temp 3
execute if score @s profile.story.adv.rescue_scientist matches 1 run scoreboard players set #tier Temp 4
execute if score @s profile.story.adv.win_difficulty_3 matches 1 run scoreboard players set #tier Temp 5
execute if score @s profile.story.adv.rescue_petitioner matches 1 run scoreboard players set #tier Temp 6
execute if score @s profile.story.adv.win_difficulty_4 matches 1 run scoreboard players set #tier Temp 8

