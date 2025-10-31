# Modify the resource cost of a card when it is spellbound

## INPUT
# Assumes the following have been set:
#   Green.Cost game.resources
#   Red.Cost game.resources
#   Aqua.Cost game.resources

#==================================================================================================

# If all scores are 0, return
execute if score Green.Cost game.resources matches 0 if score Red.Cost game.resources matches 0 if score Aqua.Cost game.resources matches 0 run return 1

# DEBUG
say Modifying costs
scoreboard players set #CostReduced game.resources 1

# For now, just reduce all by 1... minimum of 1
execute if score Green.Cost game.resources matches 1.. run scoreboard players remove Green.Cost game.resources 1
execute if score Red.Cost game.resources matches 1.. run scoreboard players remove Red.Cost game.resources 1
execute if score Aqua.Cost game.resources matches 1.. run scoreboard players remove Aqua.Cost game.resources 1


# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get Green.Cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get Red.Cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get Aqua.Cost game.resources
