# Dynamically updates which marker is marked as the current Fallback position

## CONSTRAINTS
#   AS TutorialMarker, tags LastDropped and Checkpoint
#   IN exigence:tutorial

#=============================================================================================================

# Reset tag
tag @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] remove Fallback

# Give tag to the current LastDropped
tag @s add Fallback

# Set spawnpoint to checkpoint
execute at @s as @a[distance=..1000,tag=Tutorial] run spawnpoint @s ~ ~ ~

# Call function to update fallback score
execute if score @s TutorialMarkerID matches 10 run scoreboard players set Fallback Tutorial 5
execute if score @s TutorialMarkerID matches 15 run scoreboard players set Fallback Tutorial 106
execute if score @s TutorialMarkerID matches 20 run scoreboard players set Fallback Tutorial 301
execute if score @s TutorialMarkerID matches 31 run scoreboard players set Fallback Tutorial 401
execute if score @s TutorialMarkerID matches 37 run scoreboard players set Fallback Tutorial 1001
execute if score @s TutorialMarkerID matches 39 run scoreboard players set Fallback Tutorial 1101
execute if score @s TutorialMarkerID matches 42 run scoreboard players set Fallback Tutorial 1201
execute if score @s TutorialMarkerID matches 47 run scoreboard players set Fallback Tutorial 1301
execute if score @s TutorialMarkerID matches 54 run scoreboard players set Fallback Tutorial 1401
execute if score @s TutorialMarkerID matches 59 run scoreboard players set Fallback Tutorial 1500
scoreboard players operation Step Tutorial = Fallback Tutorial
