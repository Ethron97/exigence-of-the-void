# Initialize new Pattern

## CONSTRAINTS#
## INPUT
#   FLOAT[] - Rotation

#========================================================================================================

# Setup at randomized position
$execute at @e[type=marker,tag=FlowPosA] align xyz run summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["FlowTrialSetup","Pattern","NewPattern","Wave"],}

# Initialize scores
scoreboard players operation @e[type=marker,tag=Wave,tag=NewPattern] PatternSpeed = #next PatternSpeed
scoreboard players set @e[type=marker,tag=Wave,tag=NewPattern] PatternTimer 60

# New ripple
execute as @e[type=marker,tag=Wave,tag=NewPattern] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/new_ripple with entity @s

# PLaysound
execute at @e[type=marker,tag=FlowPosA] run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~

# Remove local tag
tag @e[type=marker,tag=Pattern,tag=Wave,tag=NewPattern] remove NewPattern


