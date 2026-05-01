# Setup bookshelf node
#   Called on game load

## CONSTRAINTS
#   AS/AT bookshelf node

## INPUT
#   SCORE #setup Temp 0-1

#====================================================================================================

# Reset
function exigence:mirror/bookshelf/node/reset

execute if score #setup Temp matches 1 run function exigence:mirror/bookshelf/node/activate
