# Called when detect_game_state.mcfunction detects a victory
say You won!

# Main title
title @a[tag=ActivePlayer] title [{text:"Victory",color:"green"}]

# Play victory sound
execute in exigence:hub run playsound minecraft:ui.toast.challenge_complete neutral @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1 1

# remove won tag
tag @a[tag=Won] remove Won

# Give appropriate advancements
execute if score game.difficulty game.state matches 1 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_1'}
execute if score game.difficulty game.state matches 2 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_2'}
execute if score game.difficulty game.state matches 3 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_3'}
execute if score game.difficulty game.state matches 4 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'win_difficulty_4'}

# Track win scores
execute if score game.difficulty game.state matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D1 1
execute if score game.difficulty game.state matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D2 1
execute if score game.difficulty game.state matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D3 1
execute if score game.difficulty game.state matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.wins_D4 1

# Add Max Menace Wins score
execute if score game.max_menace game.state matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.cr.max_menace_wins 1

# Copy additional card procs from modifiers to embershop
scoreboard players operation BonusCards EmberShop = mod.bonus_cards game.modifiers
# Refresh the Ember shop
#function exigence:hub/ember_shop/reset
#function exigence:hub/ember_shop/refresh_shop_v2

# Turn off the game
function exigence:game/game_off

function exigence:game/access/leave

# TEMP RETURN
return 1
#----------------------------------------------------------------------------------------------------

# Convert coins to money
execute as @a[tag=ActivePlayer] store result score @s hub.coin_conversion run clear @s minecraft:gold_nugget
# Add combine all players coins into one pile
scoreboard players set coins.converting hub.coin_conversion 0
execute as @a[tag=ActivePlayer] run scoreboard players operation coins.converting hub.coin_conversion += @s hub.coin_conversion
scoreboard players reset @a[tag=ActivePlayer] hub.coin_conversion
execute as @a[tag=ActivePlayer,tag=PrimaryPlayer] run function exigence:hub/convert_money/convert

# Update player's profile.data.winloss.highest_win scores
scoreboard players set #temp Temp 0
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode] run scoreboard players operation #temp Temp > @s node.property.echo.difficulty
scoreboard players operation @a[tag=ActivePlayer] profile.data.winloss.highest_win > #temp Temp

# Update the win score of the chosen Echo Nodes
execute unless entity @a[scores={career.settings.echo_win_tracking=0},tag=ActivePlayer] run scoreboard players add @e[type=minecraft:armor_stand,tag=ChosenEchoNode] node.data.echo.times_won 1

# Save primary player id before resetting the game
scoreboard players operation #compare profile.player.profile_id = @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] profile.player.profile_id

# Reset the game
function exigence:game/game_reset

# Load chest in ember shop from primary player (saved player id before resetting game)
#function exigence:hub/ember_shop/private/load_chest

