# Replace altar with random ruined altar

## CONSTRAINTS
#   AS altar node

#====================================================================================================

# Deactivate first so we clone over the campfire
function exigence:altar/node/deactivate

# Clone one of five ruined altars
execute store result score @s Random run random value 1..5

## SWITCH
execute at @s if score @s Random matches 1 run return run clone -390 -43 -123 -388 -42 -121 ~-1 ~-1 ~-1
execute at @s if score @s Random matches 2 run return run clone -386 -43 -123 -384 -42 -121 ~-1 ~-1 ~-1
execute at @s if score @s Random matches 3 run return run clone -382 -43 -123 -380 -42 -121 ~-1 ~-1 ~-1
execute at @s if score @s Random matches 4 run return run clone -386 -43 -119 -384 -42 -117 ~-1 ~-1 ~-1
execute at @s if score @s Random matches 5 run return run clone -382 -43 -119 -380 -42 -117 ~-1 ~-1 ~-1
