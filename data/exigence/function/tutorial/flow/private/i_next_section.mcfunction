# Iterative function to step over markers
#   Finds first Checkpoint marker after starting marker

## CONSTRAINTS
#   IN exigence:tutorial
#   AS TutorialMarker

#====================================================================================================

# DEBUG
execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run tellraw @a [{text:"(D3) Next section iterate "},{score:{name:"@s",objective:"tutorial.marker.id"}}]

# Reset token
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] run tag @s remove LastDropped
tag @s add LastDropped
tag @s add Dropped

# If node that was marked as LastDropped also has tag "Checkpoint" and tp player forward
execute as @s[tag=Checkpoint] run function exigence:tutorial/flow/last_dropped_fallback
execute as @s[tag=Checkpoint] run function exigence:tutorial/flow/next_token

# Update debug colors
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/update_debug_color

# If not checkpoint, iterate
execute in exigence:tutorial at @s[tag=!Checkpoint] as @n[type=minecraft:marker,tag=TutorialMarker,tag=!Dropped,distance=..100] run function exigence:tutorial/flow/private/i_next_section

