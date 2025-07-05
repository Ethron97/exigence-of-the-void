# Calls sub-functions to drop various items
#   A separate function mostly so we can unit test
#   Called from death.died

## CONSTRAINTS
#   AS player
#   AT deathmarker

#============================================================================================================

# DEBUG
#say Dropping items

function exigence:player/drop/coins/drop
function exigence:player/drop/glint/drop
function exigence:player/drop/research/drop
function exigence:player/death/drop_items_loop {type:'hotbar',index:0}
function exigence:player/death/drop_offhand
