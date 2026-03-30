# Fake natural progression of profile progress

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

scoreboard players add @s fake_profile_progress 1
scoreboard players operation #temp Temp = @s fake_profile_progress

execute if score #temp Temp matches 1 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_0'}

#execute if score #temp Temp matches 2 run scoreboard players add @s profile.data.winloss.attempts_D1 1
execute if score #temp Temp matches 3 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_1'}
execute if score #temp Temp matches 4 run function exigence:profile/profile_node/story/grant {story:'rescue_supplier'}

#execute if score #temp Temp matches 5 run scoreboard players add @s profile.data.winloss.attempts_D2 1
execute if score #temp Temp matches 6 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_2'}
execute if score #temp Temp matches 7 run function exigence:profile/profile_node/story/grant {story:'match_bookshelf'}
execute if score #temp Temp matches 8 run function exigence:profile/profile_node/story/grant {story:'rescue_scientist'}

#execute if score #temp Temp matches 9 run scoreboard players add @s profile.data.winloss.attempts_D3 1
execute if score #temp Temp matches 10 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_3'}
execute if score #temp Temp matches 11 run function exigence:profile/profile_node/story/grant {story:'talk_to_petitioner'}
execute if score #temp Temp matches 12 run function exigence:profile/profile_node/story/grant {story:'light_altars'}
execute if score #temp Temp matches 13 run function exigence:profile/profile_node/story/grant {story:'rescue_petitioner'}

#execute if score #temp Temp matches 14 run scoreboard players add @s profile.data.winloss.attempts_D4 1
execute if score #temp Temp matches 15 run function exigence:profile/profile_node/story/grant {story:'win_difficulty_4'}
execute if score #temp Temp matches 16 run function exigence:profile/profile_node/story/grant {story:'destroy_crystals'}

#execute if score #temp Temp matches 17 run scoreboard players add @s profile.data.winloss.attempts_D5 1

#====================================================================================================
execute if score #temp Temp matches 1 run say Win difficulty 0
execute if score #temp Temp matches 2 run say Atempt Level 1
execute if score #temp Temp matches 3 run say Win Level 1
execute if score #temp Temp matches 4 run say Rescue Supplier

execute if score #temp Temp matches 5 run say Attempt Level 2
execute if score #temp Temp matches 6 run say Win Level 2
execute if score #temp Temp matches 7 run say Match Bookshelf
execute if score #temp Temp matches 8 run say Rescue Scientist

execute if score #temp Temp matches 9 run say Attempt Level 3
execute if score #temp Temp matches 10 run say Win Level 3
execute if score #temp Temp matches 11 run say Talk To Petitioner
execute if score #temp Temp matches 12 run say Light Altars
execute if score #temp Temp matches 13 run say Rescue Petitioners

execute if score #temp Temp matches 14 run say Attempt Level 4
execute if score #temp Temp matches 15 run say Win Level 4
execute if score #temp Temp matches 16 run say Destroy Crystals

execute if score #temp Temp matches 17 run say Attempt Level 5

execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/admin/fake_profile_progress_b
