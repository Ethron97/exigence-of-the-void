#  When a player attempts to enter the tutorial from the hub

## CONSTRAINTS
# Call as player

#=============================================================================================================

# DEBUG
say Try enter tutorial

# Check that no one else is currently in the tutorial
execute if data storage exigence:dungeon {tutorial:1} run tellraw @s [{text:"The Tutorial is in use",color:"red"}]
execute if data storage exigence:dungeon {tutorial:1} run return 1
#   TODO message changes if someone disconnected or if they're currently usin git
#   Maybe let someone in immediately if someone DCs?
# Involves tokens or something, incase someone disconnects from tutorial

# Check that player has empty inventory
execute store result score temp Temp run clear @s * 0
execute if score temp Temp matches 1.. run tellraw @s {text:"Put away your items before entering the tutorial",color:"red"}
execute if score temp Temp matches 1.. run return 1

# If all checks passed, enter tutorial
execute in exigence:tutorial run function exigence:tutorial/access/enter_tutorial
