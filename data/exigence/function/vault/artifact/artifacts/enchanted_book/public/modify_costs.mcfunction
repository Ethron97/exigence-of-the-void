# Modify the resource cost of a card when it is spellbound

## INPUT
# Assumes the following have been set:
#   GreenCost Resources
#   RedCost Resources
#   AquaCost Resources

#==================================================================================================

# If all scores are 0, return
execute if score GreenCost Resources matches 0 if score RedCost Resources matches 0 if score AquaCost Resources matches 0 run return 1

# DEBUG
say Modifying costs
scoreboard players set #CostReduced Resources 1

# For now, just reduce all by 1... minimum of 1
execute if score GreenCost Resources matches 1.. run scoreboard players remove GreenCost Resources 1
execute if score RedCost Resources matches 1.. run scoreboard players remove RedCost Resources 1
execute if score AquaCost Resources matches 1.. run scoreboard players remove AquaCost Resources 1


# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get GreenCost Resources
execute store result storage exigence:resources red int 1 run scoreboard players get RedCost Resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get AquaCost Resources
