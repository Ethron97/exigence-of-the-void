# Fake natural progression of profile progress

## CONSTRAINTS
#   AS profile_node

#====================================================================================================

#say (D3) Fake progress B

#execute if score #temp Temp matches 1 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_0'}
execute if score #temp Temp matches 2 run scoreboard players add @s profile.data.winloss.attempts_D1 1
#execute if score #temp Temp matches 3 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_1'}
#execute if score #temp Temp matches 4 run function exigence:profile/profile_node/story/grant {story:'rescue_supplier'}

execute if score #temp Temp matches 5 run scoreboard players add @s profile.data.winloss.attempts_D2 1
#execute if score #temp Temp matches 6 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_2'}
#execute if score #temp Temp matches 7 run function exigence:profile/profile_node/story/grant {story:'match_bookshelf'}
#execute if score #temp Temp matches 8 run function exigence:profile/profile_node/story/grant {story:'rescue_scientist'}

execute if score #temp Temp matches 9 run scoreboard players add @s profile.data.winloss.attempts_D3 1
#execute if score #temp Temp matches 10 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_3'}
#execute if score #temp Temp matches 11 run function exigence:profile/profile_node/story/grant {story:'talk_to_petitioner'}
#execute if score #temp Temp matches 12 run function exigence:profile/profile_node/story/grant {story:'light_altars'}
#execute if score #temp Temp matches 13 run function exigence:profile/profile_node/story/grant {story:'rescue_petitioner'}

execute if score #temp Temp matches 14 run scoreboard players add @s profile.data.winloss.attempts_D4 1
#execute if score #temp Temp matches 15 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_4'}
#execute if score #temp Temp matches 16 run function exigence:profile/profile_node/story/grant {story:'destroy_crystals'}

execute if score #temp Temp matches 17 run scoreboard players add @s profile.data.winloss.attempts_D5 1
