# Ensure global interaction exists for this player
#   Called when player enters game, or enters a shop, or settings menu in future.

## CONSTRAINTS
#   AS player

#========================================================================================================

# Store player id for comparison
scoreboard players operation #compare game.entity.profile_id = @s profile.profile_id

# Reset dummy score
scoreboard players set #temp Temp 0

# Check for matching player interaction
execute as @e[type=interaction,scores={game.entity.profile_id=1..}] if score @s game.entity.profile_id = #compare game.entity.profile_id run scoreboard players set #temp Temp 1

# If it doesn't exist, create it
execute if score #temp Temp matches 0 as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.profile_id = #compare game.entity.profile_id at @s run function exigence:player/utility/interaction/summon
