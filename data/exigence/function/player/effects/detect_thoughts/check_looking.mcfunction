# Checks if the player is looking at a ravager
#   Call as player

# Add local tag
tag @s add CheckLooking

tag @e[type=minecraft:ravager,tag=RavagerLookee] remove RavagerLookee
tag @e[type=minecraft:ravager,tag=RavagerLookeeNearest] remove RavagerLookeeNearest

execute at @s as @e[distance=..30,type=minecraft:ravager] at @s anchored eyes facing entity @p[tag=ActivePlayer,tag=CheckLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ActivePlayer,tag=CheckLooking] positioned ^ ^ ^1 if entity @s[distance=..0.2] run tag @s add RavagerLookee
execute at @s as @e[distance=..10,type=minecraft:ravager] at @s anchored eyes facing entity @p[tag=ActivePlayer,tag=CheckLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ActivePlayer,tag=CheckLooking] positioned ^ ^ ^1 if entity @s[distance=..0.4] run tag @s add RavagerLookee

# Get the nearest ravager the player is looking at (in case there are a couple in a line, or bunched)
execute at @s as @e[type=minecraft:ravager,sort=nearest,limit=1,tag=RavagerLookee] run tag @s add RavagerLookeeNearest 

# Increase selected lookee's detect thoughts score by 2
scoreboard players add @e[type=minecraft:ravager,tag=RavagerLookeeNearest] game.ravager.detect_thoughts 2

# Decrease any other detected
scoreboard players remove @e[type=minecraft:ravager,scores={game.ravager.detect_thoughts=1..},tag=!RavagerLookeeNearest] game.ravager.detect_thoughts 1

# Get highest detect thoughts score
scoreboard players set #Highest game.ravager.detect_thoughts 0
execute as @e[type=minecraft:ravager,scores={game.ravager.detect_thoughts=1..},tag=RavagerLookeeNearest] run scoreboard players operation #Highest game.ravager.detect_thoughts > @s game.ravager.detect_thoughts

# Run animiation
execute at @s if entity @e[type=minecraft:ravager,tag=RavagerLookeeNearest] anchored eyes run function exigence:player/effects/detect_thoughts/animate

# If any detect thoughts scores hit the threshold, success
execute as @e[type=minecraft:ravager,scores={game.ravager.detect_thoughts=60..}] at @s run function exigence:player/effects/detect_thoughts/trigger

# Remove local tag
tag @s remove CheckLooking
