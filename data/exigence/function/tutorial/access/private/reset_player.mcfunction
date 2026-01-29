# Reset player data after tutorial
#   Called on kick/leave

## CONSTRAINTS
#   AS player

#====================================================================================================

clear @s
tag @s remove Tutorial
team leave @s
effect clear @s
attribute @s minecraft:safe_fall_distance modifier add exigence:safe_fall 100 add_value
title @s actionbar ""
# Disable triggers
scoreboard players reset @s SkipSection
scoreboard players reset @s ExitTutorial

# Reset bossbars
bossbar set exigence:tutorial_deck players @a[tag=Tutorial]
bossbar set exigence:tutorial players @a[tag=Tutorial]