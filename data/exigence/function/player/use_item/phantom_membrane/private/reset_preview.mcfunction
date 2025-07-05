# Sends a preview back to spawn, removes glow

## CONSTRAINTS
#   AS phantom preview block display

#=============================================================================================================

data modify entity @s Glowing set value false

tp @s -384.5 37.0 -116.5

tag @s add Home
