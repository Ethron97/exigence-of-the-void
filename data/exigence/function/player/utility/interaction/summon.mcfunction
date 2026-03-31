# Summon a new interaction for this player
# Called from get_interaction if it did not find an existing one for this playerid

## CONSTRAINTS
#   #compare game.entity.profile_id set
#   AS/AT PlayerNode

#====================================================================================================

# Summon interaciton entity
summon interaction ~ ~ ~ {Tags:["PlayerInteraction","FunctionInteraction","NEWI"],response:true}

# Copy player id score
execute as @e[type=interaction,tag=NEWI,distance=..1] run scoreboard players operation @s game.entity.profile_id = #compare game.entity.profile_id

# Remove local tag
execute as @e[type=interaction,tag=NEWI,distance=..1] run tag @s remove NEWI
