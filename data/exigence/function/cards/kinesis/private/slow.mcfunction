# Give slowness and tag to enemy

## CONSTRAINTS
#   AS Ravager

#==========================================================================================================

# Give slowness for the rest of the run
execute if score temp Temp matches 0 run effect give @s slowness infinite 0 false
execute if score temp Temp matches 1 run effect give @s slowness infinite 1 false
execute if score temp Temp matches 2 run effect give @s slowness infinite 2 false
execute if score temp Temp matches 3 run effect give @s slowness infinite 3 false
execute if score temp Temp matches 4 run effect give @s slowness infinite 4 false
execute if score temp Temp matches 5 run effect give @s slowness infinite 5 false
execute if score temp Temp matches 6 run effect give @s slowness infinite 6 false
execute if score temp Temp matches 7 run effect give @s slowness infinite 7 false
execute if score temp Temp matches 8 run effect give @s slowness infinite 8 false
execute if score temp Temp matches 9 run effect give @s slowness infinite 9 false

# Add tag so we can give custom particles
tag @s add Kinesis

# Add score for info
scoreboard players add temp2 Temp 1
