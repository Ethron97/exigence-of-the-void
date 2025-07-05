# Called from player tick

## CONSTRAINTS
#   AS player with s_resourceActionbar = 1

#=============================================================================================================

# Call efficientized subfunctions that avoid running unncessary steps
function exigence:player/display/resource_bar/efficient/get_green
function exigence:player/display/resource_bar/efficient/get_red
function exigence:player/display/resource_bar/efficient/get_aqua

# Call macro function
function exigence:player/display/resource_bar/efficient/macro with storage exigence:resource_hud
