# Load the full doorway

## CONSTRAINTS
#   AT predungeon menu node

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load difficulty sidebar

# Summon frame
execute positioned ~-2.75 ~2.5 ~ run function exigence:hub/predungeon/menu/display/difficulty_sidebar/summon_background
execute positioned ~-2.75 ~2.5 ~ run function exigence:hub/predungeon/menu/display/difficulty_sidebar/summon_border
