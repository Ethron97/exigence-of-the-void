# Checks whether player is holding compass in either hand

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Copy old score
scoreboard players operation #old_holding_compass HoldingCompass = @s HoldingCompass

# Check if holding
execute store success score @s HoldingCompass if items entity @s weapon.* #exigence:objective_holding

# Check if changed
#   1 = same, 0 = changed
execute store success score #same HoldingCompass if score @s HoldingCompass = #old_holding_compass HoldingCompass

# If changed, hide or initialize for this player
execute if score #same HoldingCompass matches 0 if score @s HoldingCompass matches 1 run tag @s add DisplayObjective
execute if score #same HoldingCompass matches 0 if score @s HoldingCompass matches 0 run tag @s remove DisplayObjective

# If changed, update visibility
execute if score #same HoldingCompass matches 0 run function exigence:bossbar/objective/update_visibility
