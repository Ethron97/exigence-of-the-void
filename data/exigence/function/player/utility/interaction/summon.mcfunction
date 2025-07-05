# Summon a new interaction for this player
# Called from get_interaction if it did not find an existing one for this playerid

## CONSTRAINTS
#   #compare PlayerID set
#   AS/AT PlayerNode

#========================================================================================================

# Summon interaciton entity
summon interaction ~ ~ ~ {Tags:["PlayerInteraction","FunctionInteraction","NEWI"],response:true}

# Copy player id score
execute as @e[distance=..1,type=interaction,tag=NEWI] run scoreboard players operation @s PlayerID = #compare PlayerID

# Remove local tag
execute as @e[distance=..1,type=interaction,tag=NEWI] run tag @s remove NEWI
