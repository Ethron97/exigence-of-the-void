# Open this exit portal

## CONSTRAINTS
#   AS/AT ExitNode

#====================================================================================================

# Create portal effect
scoreboard players set exit.portal.countdown tick_counter 200

# Open "potal"
scoreboard players set game.escape_portal game.state 1

# Initial sound
playsound minecraft:block.trial_spawner.ambient_ominous ambient @a ~ ~ ~ 1000 1.2

# Change portal glow to green
execute as @e[type=minecraft:block_display,tag=ExitPortalDisplay,distance=..10] run team join Green @s

# Add tag
tag @s add OpenedPortal