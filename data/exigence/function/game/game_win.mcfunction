# Called when detect_game_state.mcfunction detects a victory
# It is impossible to win unless someone is online, so we know at least one ActivePlayer will exist to get advancements

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say (C) game_win not in overworld
#----------------------------------------------------------------------------------------------------

say Victory!

# Main title
title @a[tag=ActivePlayer] title [{text:"Victory",color:"green"}]

# Play victory sound
execute in exigence:hub run playsound minecraft:ui.toast.challenge_complete neutral @a 986.5 100.0 1000.5 1000 1

# Teleport players still in the dungeon
execute as @a[tag=ActivePlayer,tag=!Won] in exigence:hub run tp @s 986.5 100.0 1000.5

# Give appropriate advancements
execute if score game.difficulty game.state matches 1 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_1'}
execute if score game.difficulty game.state matches 2 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_2'}
execute if score game.difficulty game.state matches 3 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_3'}
execute if score game.difficulty game.state matches 4 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_4'}

# Track win scores
#   MOVE DATA TO PROFILE DIRECTLY
execute if score game.difficulty game.state matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D1 1
execute if score game.difficulty game.state matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D2 1
execute if score game.difficulty game.state matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D3 1
execute if score game.difficulty game.state matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D4 1
# Add Max Menace Wins score
execute if score game.max_menace game.state matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.cr.max_menace_wins 1

# Copy additional card procs from modifiers to embershop
scoreboard players operation BonusCards EmberShop = mod.bonus_cards game.modifiers

# Update profile.data.winloss.highest_win score
scoreboard players set #temp Temp 0
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChosenEchoNode] run scoreboard players operation #temp Temp > @s node.property.echo.difficulty
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] run scoreboard players operation @s profile.data.winloss.highest_win > #temp Temp

# Update the win score of the chosen Echo Nodes
execute unless entity @a[scores={career.settings.echo_win_tracking=0},tag=ActivePlayer] run scoreboard players add @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChosenEchoNode] node.data.echo.times_won 1

#====================================================================================================

# Turn off the game
execute in minecraft:overworld run function exigence:game/game_off

# Schedule coin convert so its after the victory sound
#   Player scores were gathered from the access/leave function
schedule function exigence:game/unload/schedule_coin_conversions 80t