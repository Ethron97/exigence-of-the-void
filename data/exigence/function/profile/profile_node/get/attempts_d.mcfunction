# Get attempts scores

## CONSTRAINTS
#   AS profile node

## OUTPUT
#   SCORE #attempts_d#1-6 Temp
#   SCORE #reached_L#2-4 Temp

#====================================================================================================

scoreboard players operation #attempts_d1 Temp = @s profile.data.winloss.attempts_D1
scoreboard players operation #attempts_d2 Temp = @s profile.data.winloss.attempts_D2
scoreboard players operation #attempts_d3 Temp = @s profile.data.winloss.attempts_D3
scoreboard players operation #attempts_d4 Temp = @s profile.data.winloss.attempts_D4
scoreboard players operation #attempts_d5 Temp = @s profile.data.winloss.attempts_D5
scoreboard players operation #attempts_d6 Temp = @s profile.data.winloss.attempts_D6

scoreboard players operation #reached_2 Temp = @s profile.data.winloss.reached_L2
scoreboard players operation #reached_3 Temp = @s profile.data.winloss.reached_L3
scoreboard players operation #reached_4 Temp = @s profile.data.winloss.reached_L4
