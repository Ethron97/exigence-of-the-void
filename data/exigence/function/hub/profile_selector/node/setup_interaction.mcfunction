# Setup the facehugger for this profile selector

## CONSTRAINTS
#   AS profile selector node

#====================================================================================================

# Summon interaction
summon interaction ~ ~ ~ {Tags:["ProfileSelectorInteraction","NewProfileSelectorInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign selector id
scoreboard players operation @n[type=interaction,tag=NewProfileSelectorInteraction,distance=..0.1] hub.entity.profile_selector_id = @s hub.profile_selector_id

# Remove local tag
tag @n[type=interaction,tag=NewProfileSelectorInteraction,distance=..0.1] remove NewProfileSelectorInteraction