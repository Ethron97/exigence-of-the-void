# Called from try_consume if a card is played and fails due to lack of resources

## CONSTRAINTS
#   AS 1 player with magma cream in their inventory

#==========================================================================================================

# Add missing to "Creamed" stats, or just Underflow?
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_green += #MissingGreen game.resources
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_red += #MissingRed game.resources
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_aqua += #MissingAqua game.resources


# Set #Missing variables to 0
scoreboard players set #MissingGreen game.resources 0
scoreboard players set #MissingRed game.resources 0
scoreboard players set #MissingAqua game.resources 0

# Set LastConsumeResult to 1
scoreboard players set #LastConsumeResult game.resources 1

# Cap "Costs" at the current player resources so we don't go negative
scoreboard players operation green.cost game.resources < Current.Green game.resources
scoreboard players operation green.cost game.resources < Current.Green game.resources
scoreboard players operation green.cost game.resources < Current.Green game.resources

# Clear
clear @s magma_cream 1
