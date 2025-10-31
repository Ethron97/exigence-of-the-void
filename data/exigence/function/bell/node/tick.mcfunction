# Called by bell_tick

## CONSTRAINTS
#   AS BellNode, active
#   score game.node.bell.ring_cooldown > 0

# ===============================================================================================================

# Replace bell just before cooldown ends
execute as @s[scores={game.node.bell.ring_cooldown=1},tag=!Smashed] run function exigence:bell/node/private/respawn_bell

# Cooldown particles around any BellNodes that are in cooldown
execute as @s[scores={game.node.bell.ring_cooldown=1..},tag=!Smashed] run function exigence:bell/node/cooldown_ambient

# Reduce bell cooldowns
scoreboard players remove @s game.node.bell.ring_cooldown 1
