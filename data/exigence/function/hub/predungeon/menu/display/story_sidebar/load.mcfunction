# Load the full doorway

## CONSTRAINTS
#   AS profile node
#   AT location

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load story sidebar

# Summon frame
function exigence:hub/predungeon/menu/display/story_sidebar/summon_background
function exigence:hub/predungeon/menu/display/story_sidebar/summon_border
function exigence:hub/predungeon/menu/display/story_sidebar/summon_arrow

# Load "transition" display
#   as profile node
function exigence:hub/predungeon/menu/display/story_sidebar/transition/load

# Load current achivement
execute positioned ~ ~-0.7 ~ run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/load_current

# Load next achievement
execute positioned ~ ~0.7 ~ run function exigence:hub/predungeon/menu/display/story_sidebar/advancement/load_next
