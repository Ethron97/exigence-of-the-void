# Modify the resource cost of a card when it is spellbound

## INPUT
# Assumes the following have been set:
#   green.cost game.resources
#   red.cost game.resources
#   aqua.cost game.resources

#==================================================================================================

# If all scores are 0, return
execute if score green.cost game.resources matches 0 if score red.cost game.resources matches 0 if score aqua.cost game.resources matches 0 run return 1

# DEBUG
say Modifying costs
scoreboard players set #CostReduced game.resources 1

# For now, just reduce all by 1... minimum of 1
execute if score green.cost game.resources matches 1.. run scoreboard players remove green.cost game.resources 1
execute if score red.cost game.resources matches 1.. run scoreboard players remove red.cost game.resources 1
execute if score aqua.cost game.resources matches 1.. run scoreboard players remove aqua.cost game.resources 1


# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get green.cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get red.cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get aqua.cost game.resources
