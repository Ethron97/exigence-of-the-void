# Run open/setup when first player enters the room

## CONSTRAINTS
#   AS/AT profile selector node

#=============================================================================================================

say Load room

# Place empty chests
function exigence:hub/profile_selector/load/place_chests

# Load profile menu
execute store result storage exigence:temp player_id int 1 run scoreboard players get #compare career.player_id
execute store result storage exigence:temp profile_selector_id int 1 run scoreboard players get @s hub.profile_selector_id
function exigence:hub/profile_selector/menu/load_menu with storage exigence:temp

# Fill chests
function exigence:hub/profile_selector/load/load_chests

# Setup interaction
function exigence:hub/profile_selector/node/setup_interaction
