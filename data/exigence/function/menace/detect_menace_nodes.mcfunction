# Ping the player and check for any menace nodes near the player.

# Add tag to nodes that are currently being procced
execute as @a[tag=ActivePlayer,scores={dead=0}] at @s unless score @s mod_PhantomScales matches 6 as @e[distance=..8,type=minecraft:armor_stand,tag=MenaceNode,tag=Active,scores={MenaceNodeCooldown=0},sort=nearest,limit=1] run function exigence:menace/proc/from_node
