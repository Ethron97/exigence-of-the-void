# Called by botany/resolve_berry to grow a single active berry bush

## CONSTRAINTS
#   IN minecraft:overworld

## INPUT
#   score growth.level game.dungeon.temp must be set before calling this
#   Tries to grow on bush on GrowthLevel

# This function lets us potentially add overgrow mechancis later, such as if a card is active or certain items are equipped.

#====================================================================================================

# DEBUG
#tellraw @a [{text:"DEBUG Attempting to grow on level ",color:"gray"},{"score":{"name":"growth.level","objective":"game.dungeon.temp"},color:"dark_green"}]

## SWITCH
execute if score growth.level game.dungeon.temp matches 1 run return run function exigence:botany/node/grow_bush/1
execute if score growth.level game.dungeon.temp matches 2 run return run function exigence:botany/node/grow_bush/2
execute if score growth.level game.dungeon.temp matches 3 run return run function exigence:botany/node/grow_bush/3
execute if score growth.level game.dungeon.temp matches 4 run return run function exigence:botany/node/grow_bush/4