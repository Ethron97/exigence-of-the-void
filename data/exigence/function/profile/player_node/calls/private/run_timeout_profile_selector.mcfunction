# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout profile selector

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.timeout_profile_selector

# Call function
tellraw @s [{text:"Exceeded Profile Selector timeout limit",color:red}]
function exigence:hub/profile_selector/access/kick