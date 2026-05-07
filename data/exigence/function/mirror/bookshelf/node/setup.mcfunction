# Setup bookshelf node
#   Called on game load

## CONSTRAINTS
#   AS/AT bookshelf node

## INPUT
#   SCORE #setup_bookshelves Temp 0-1

#====================================================================================================

# Reset
function exigence:mirror/bookshelf/node/reset

execute if score #setup_bookshelves Temp matches 1 run function exigence:mirror/bookshelf/node/activate
