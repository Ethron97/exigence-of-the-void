# Ping the player and check for any menace nodes near the player.

# Add tag to nodes that are currently being procced
execute as @a[scores={dead=0},tag=ActivePlayer] at @s unless score @s game.player.mod.phantom_scales matches 6 as @e[type=minecraft:armor_stand,scores={game.node.menace.cooldown=0},tag=MenaceNode,tag=Active,distance=..8,sort=nearest,limit=1] run function exigence:menace/proc/from_node
