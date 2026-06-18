# Called from use magma cream

## CONSTRAINTS
#   AS 1 player with magma cream in their inventory

#====================================================================================================

# Add missing to "Creamed" stats, or just Underflow?
#scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_green += #MissingGreen game.resources
#scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_red += #MissingRed game.resources
#scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_aqua += #MissingAqua game.resources

# Total to apply
scoreboard players set #total_to_apply Temp 2

# Try to apply wild resource to GREEN
scoreboard players operation #to_apply Temp = #total_to_apply Temp
scoreboard players operation #to_apply Temp < #MissingGreen game.resources
scoreboard players operation green.current game.resources += #to_apply Temp
scoreboard players operation #MissingGreen game.resources -= #to_apply Temp
scoreboard players operation #Missing game.resources -= #to_apply Temp
scoreboard players operation #total_to_apply Temp -= #to_apply Temp

# If no more missing, return good
execute if score #Missing game.resources matches 0 run return run scoreboard players set #LastConsumeResult game.resources 1
#----------------------------------------------------------------------------------------------------
# If no more to apply, return
execute if score #total_to_apply Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

# Try to apply wild resource to RED
scoreboard players operation #to_apply Temp = #total_to_apply Temp
scoreboard players operation #to_apply Temp < #MissingRed game.resources
scoreboard players operation red.current game.resources += #to_apply Temp
scoreboard players operation #MissingRed game.resources -= #to_apply Temp
scoreboard players operation #Missing game.resources -= #to_apply Temp
scoreboard players operation #total_to_apply Temp -= #to_apply Temp

# If no more missing, return good
execute if score #Missing game.resources matches 0 run return run scoreboard players set #LastConsumeResult game.resources 1
#----------------------------------------------------------------------------------------------------
# If no more to apply, return
execute if score #total_to_apply Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

# Try to apply wild resource to AQUA
scoreboard players operation #to_apply Temp = #total_to_apply Temp
scoreboard players operation #to_apply Temp < #MissingAqua game.resources
scoreboard players operation aqua.current game.resources += #to_apply Temp
scoreboard players operation #MissingAqua game.resources -= #to_apply Temp
scoreboard players operation #Missing game.resources -= #to_apply Temp
scoreboard players operation #total_to_apply Temp -= #to_apply Temp

# If no more missing, return good
execute if score #Missing game.resources matches 0 run return run scoreboard players set #LastConsumeResult game.resources 1
#----------------------------------------------------------------------------------------------------

# Set #Missing variables to 0
#scoreboard players set #MissingGreen game.resources 0
#scoreboard players set #MissingRed game.resources 0
#scoreboard players set #MissingAqua game.resources 0

# Set LastConsumeResult to 1 if no remaining missing resources
#scoreboard players set #LastConsumeResult game.resources 1
