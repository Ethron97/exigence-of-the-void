# Reset advancement
advancement revoke @s only exigence:listener/pickup/tutorial_token

# Return if the tutorial is not active
execute if data storage exigence:dungeon {tutorial:0} run return 1

# Delete the picked item from their inventory
clear @s minecraft:flow_banner_pattern 1

execute in exigence:tutorial run function exigence:tutorial/flow/step
