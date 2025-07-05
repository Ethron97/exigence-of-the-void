# Called when detect_game_state.mcfunction detects a victory
say You won!

# Main title
title @a[tag=ActivePlayer] title {text:"Victory",color:"green"}

# Give appropriate advancements
execute if score Difficulty DungeonRun matches 0 as @a[tag=ActivePlayer,advancements={exigence:story/win_difficulty_0=false}] run advancement grant @s only exigence:story/win_difficulty_0
execute if score Difficulty DungeonRun matches 1 as @a[tag=ActivePlayer,advancements={exigence:story/win_difficulty_1=false}] run advancement grant @s only exigence:story/win_difficulty_1
execute if score Difficulty DungeonRun matches 2 as @a[tag=ActivePlayer,advancements={exigence:story/win_difficulty_2=false}] run advancement grant @s only exigence:story/win_difficulty_2
execute if score Difficulty DungeonRun matches 3 as @a[tag=ActivePlayer,advancements={exigence:story/win_difficulty_3=false}] run advancement grant @s only exigence:story/win_difficulty_3
execute if score Difficulty DungeonRun matches 4 as @a[tag=ActivePlayer,advancements={exigence:story/win_difficulty_4=false}] run advancement grant @s only exigence:story/win_difficulty_4

# Track win scores
execute if score Difficulty DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] t_level1Wins 1
execute if score Difficulty DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] t_level2Wins 1
execute if score Difficulty DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] t_level3Wins 1
execute if score Difficulty DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] t_level4Wins 1

# Add Max Menace Wins score
execute if data storage exigence:dungeon {max_menace:1} run scoreboard players add @a[tag=ActivePlayer] t_maxMenaceWins 1

# Copy additional card procs from modifiers to embershop
scoreboard players operation BonusCards EmberShop = BonusCards Modifiers

# Refresh the Ember shop
function exigence:hub/ember_shop/reset
function exigence:hub/ember_shop/refresh_shop_v2

# Play victory sound
playsound minecraft:ui.toast.challenge_complete neutral @a ~ ~1000 ~ 1000 1 1

# Convert coins to money
execute as @a[tag=ActivePlayer] store result score @s CoinsToConvert run clear @s minecraft:gold_nugget
# Add combine all players coins into one pile
scoreboard players set Coins CoinsToConvert 0
execute as @a[tag=ActivePlayer] run scoreboard players operation Coins CoinsToConvert += @s CoinsToConvert
scoreboard players reset @a[tag=ActivePlayer] CoinsToConvert
execute as @a[tag=ActivePlayer,tag=PrimaryPlayer] run function exigence:hub/convert_money/convert

# remove won tag
tag @a[tag=Won] remove Won

# Update player's highestWin scores
scoreboard players set #Highest DungeonRun 0
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode] run scoreboard players operation #Highest DungeonRun > @s EchoDifficulty
scoreboard players operation @a[tag=ActivePlayer] HighestWin > #Highest DungeonRun

# Update the win score of the chosen Echo Nodes
execute unless entity @a[tag=ActivePlayer,scores={s_disableEchoWinTracking=1}] run scoreboard players add @e[type=minecraft:armor_stand,tag=ChosenEchoNode] EchoTimesWon 1

# Save primary player id before resetting the game
scoreboard players operation #compare PlayerID = @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] PlayerID

# Turn off the game
function exigence:game/game_off

# Reset the game
function exigence:game/game_reset

# Load chest in ember shop from primary player (saved player id before resetting game)
function exigence:hub/ember_shop/private/load_chest

