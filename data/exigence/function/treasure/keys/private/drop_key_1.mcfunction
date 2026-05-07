# Drop mirror mine key

## CONSTRAINTS
#   AS TreasureNode (NewKeyDropper)

#====================================================================================================

execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Drop key 1

tag @s add KeyDropper
function exigence:treasure/node/drop_treasure {priority:1,function:"exigence:door/level/door_1/summon_key"}
scoreboard players add 1.keys_dropped game.level_doors 1