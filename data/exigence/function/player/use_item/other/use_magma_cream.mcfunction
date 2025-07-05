# Called from try_consume if a card is played and fails due to lack of resources

## CONSTRAINTS
#   AS 1 player with magma cream in their inventory

#==========================================================================================================

# Add missing to "Creamed" stats, or just Underflow?
scoreboard players operation @a[tag=ActivePlayer] cr_underflowGreen += #MissingGreen Resources
scoreboard players operation @a[tag=ActivePlayer] cr_underflowRed += #MissingRed Resources
scoreboard players operation @a[tag=ActivePlayer] cr_underflowAqua += #MissingAqua Resources

scoreboard players operation @a[tag=ActivePlayer] t_underflowGreen += #MissingGreen Resources
scoreboard players operation @a[tag=ActivePlayer] t_underflowRed += #MissingRed Resources
scoreboard players operation @a[tag=ActivePlayer] t_underflowAqua += #MissingAqua Resources

# Set #Missing variables to 0
scoreboard players set #MissingGreen Resources 0
scoreboard players set #MissingRed Resources 0
scoreboard players set #MissingAqua Resources 0

# Set LastConsumeResult to 1
scoreboard players set LastConsumeResult Resources 1

# Cap "Costs" at the current player resources so we don't go negative
scoreboard players operation GreenCost Resources < Green Resources
scoreboard players operation GreenCost Resources < Green Resources
scoreboard players operation GreenCost Resources < Green Resources

# Clear
clear @s magma_cream 1
