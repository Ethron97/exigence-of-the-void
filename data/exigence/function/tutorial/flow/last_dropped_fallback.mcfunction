# Dynamically updates which marker is marked as the current Fallback position

## CONSTRAINTS
#   AS TutorialMarker, tags LastDropped and Checkpoint
#   IN exigence:tutorial

#====================================================================================================

# Reset tag
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback] remove Fallback

# Give tag to the current LastDropped
tag @s add Fallback

# Set spawnpoint to checkpoint
execute at @s as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] run spawnpoint @s ~ ~ ~

# Call function to update fallback score
execute if score @s tutorial.marker.id matches 10 run scoreboard players set tut.fallback hub.tutorial 5
execute if score @s tutorial.marker.id matches 15 run scoreboard players set tut.fallback hub.tutorial 106
execute if score @s tutorial.marker.id matches 20 run scoreboard players set tut.fallback hub.tutorial 301
execute if score @s tutorial.marker.id matches 31 run scoreboard players set tut.fallback hub.tutorial 401
execute if score @s tutorial.marker.id matches 37 run scoreboard players set tut.fallback hub.tutorial 1001
execute if score @s tutorial.marker.id matches 39 run scoreboard players set tut.fallback hub.tutorial 1101
execute if score @s tutorial.marker.id matches 42 run scoreboard players set tut.fallback hub.tutorial 1201
execute if score @s tutorial.marker.id matches 47 run scoreboard players set tut.fallback hub.tutorial 1301
execute if score @s tutorial.marker.id matches 54 run scoreboard players set tut.fallback hub.tutorial 1401
execute if score @s tutorial.marker.id matches 59 run scoreboard players set tut.fallback hub.tutorial 1500
scoreboard players operation tut.step hub.tutorial = tut.fallback hub.tutorial
