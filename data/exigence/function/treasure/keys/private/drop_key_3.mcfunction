# Drop ardors bane

## CONSTRAINTS
#   AS TreasureNode (NewKeyDropper)

#==========================================================================================================

tag @s add KeyDropper
function exigence:treasure/node/drop_treasure {priority:1,function:"exigence:door/level/door_3/summon_key"}
scoreboard players add 3.keys_dropped game.level_doors 1
