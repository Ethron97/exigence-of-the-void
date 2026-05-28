# Initialize new Pattern

## CONSTRAINTS#
## INPUT
#   FLOAT[] - Rotation

#====================================================================================================

# Setup at randomized position
$execute at @e[type=minecraft:marker,tag=FlowPosA,distance=..24] align xyz run summon minecraft:marker ~ ~ ~ {Rotation:$(Rotation),Tags:["FlowTrialSetup","Pattern","NewPattern","Wave"],CustomName:{text:"Marker | Wave"}}

# Initialize scores
scoreboard players operation @e[type=minecraft:marker,tag=Wave,tag=NewPattern,distance=..24] trial.object.speed = #next trial.object.speed
scoreboard players set @e[type=minecraft:marker,tag=Wave,tag=NewPattern,distance=..24] trial.object.timer 60

# New ripple
execute as @e[type=minecraft:marker,tag=Wave,tag=NewPattern,distance=..24] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/new_ripple with entity @s

# PLaysound
execute at @e[type=minecraft:marker,tag=FlowPosA,distance=..24] run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~

# Remove local tag
tag @e[type=minecraft:marker,tag=Pattern,tag=Wave,tag=NewPattern,distance=..24] remove NewPattern
