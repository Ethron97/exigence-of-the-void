# Setup the facehugger for this profile selector

## CONSTRAINTS
#   AS profile selector node

#=============================================================================================================

# Summon interaction
summon interaction ~ ~ ~ {Tags:["ProfileSelectorInteraction","NewProfileSelectorInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign selector id
scoreboard players operation @n[distance=..0.1,type=interaction,tag=NewProfileSelectorInteraction] hub.entity.profile_selector_id = @s hub.profile_selector_id

# Remove local tag
tag @n[distance=..0.1,type=interaction,tag=NewProfileSelectorInteraction] remove NewProfileSelectorInteraction