# Drop temple of fervor key

## CONSTRAINTS
#   AS TreasureNode (NewKeyDropper)

#==========================================================================================================

tag @s add KeyDropper
function exigence:treasure/node/drop_treasure {function:"exigence:door/level/door_2/summon_key"}
