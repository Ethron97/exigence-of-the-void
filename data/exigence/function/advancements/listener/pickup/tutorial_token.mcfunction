# Reset advancement
advancement revoke @s only exigence:listener/pickup/tutorial_token

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup tutorial token

# Return if the tutorial is not active
execute unless score tut.active hub.tutorial matches 1 run return 1
execute unless entity @s[tag=Tutorial] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup tutorial token (not cancelled)

# Delete the picked item from their inventory
clear @s minecraft:flow_banner_pattern 1

execute in exigence:tutorial run function exigence:tutorial/flow/step
