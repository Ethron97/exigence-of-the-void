# Updates the glow color of the debug block display

## CONSTRAINTS
#   AS TutorialMarker

#=============================================================================================================

execute unless entity @s[tag=Dropped] at @s as @e[distance=..1,type=block_display] run team join Green @s
execute if entity @s[tag=Dropped] at @s as @e[distance=..1,type=block_display] run team join Enemy @s
execute if entity @s[tag=LastDropped] at @s as @e[distance=..1,type=block_display] run team join Yellow @s
execute if entity @s[tag=Fallback] at @s as @e[distance=..1,type=block_display] run team join Echo @s
