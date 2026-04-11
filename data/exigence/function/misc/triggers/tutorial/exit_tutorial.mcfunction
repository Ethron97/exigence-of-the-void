# Exit tutorial

## CONSTRAINTS
#   AS player

#====================================================================================================
execute unless entity @s[tag=Tutorial] run return run say (C) Player does not have tutorial tag (triggers/tutorial/exit_tutorial)
#====================================================================================================

#say (D3) Trigger exit tutorial

# Message player
tellraw @s [{text:"-> Exit Tutorial",color:red}]

execute if entity @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/access/leave
execute at @s run playsound minecraft:block.copper_door.close ui @s ~ ~100 ~ 100 1

# Reset trigger
scoreboard players reset @s ExitTutorial