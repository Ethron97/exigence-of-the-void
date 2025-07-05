# Ensure global interaction exists for this player
#   Called when player enters game, or enters a shop, or settings menu in future.

## CONSTRAINTS
#   AS player

#========================================================================================================

# Store player id for comparison
scoreboard players operation #compare PlayerID = @s PlayerID

# Reset dummy score
scoreboard players set temp Temp 0

# Check for matching player interaction
execute as @e[type=interaction,scores={PlayerID=1..}] if score @s PlayerID = #compare PlayerID run scoreboard players set temp Temp 1

# If it doesn't exist, create it
execute if score temp Temp matches 0 as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #compare PlayerID at @s run function exigence:player/utility/interaction/summon
