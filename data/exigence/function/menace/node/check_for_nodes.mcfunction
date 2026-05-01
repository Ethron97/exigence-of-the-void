# Check for nodes
#   Called from player/tick/tick_alive_second

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# If player is invis with ghost cloak, return
execute if score @s game.player.mod.phantom_scales matches 6 if score @s game.player.effects.invisibility matches 1.. run return 0
#----------------------------------------------------------------------------------------------------

execute as @n[type=minecraft:marker,scores={game.node.menace.cooldown=0},tag=MenaceNode,tag=Active,distance=..8] run function exigence:menace/node/proc_menace
