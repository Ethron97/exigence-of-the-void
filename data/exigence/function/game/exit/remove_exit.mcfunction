# Remove this exit and its auxillery entities

## CONSTRAINTS
#   AS/AT exit node

#====================================================================================================

fill ~ ~1 ~ ~ ~1 ~ air replace light

kill @e[type=minecraft:block_display,tag=ExitPortalDisplay,distance=..10]

tag @n[type=minecraft:marker,tag=HasPortal,distance=..1] remove HasPortal

kill @s[type=minecraft:marker,tag=ExitNode]