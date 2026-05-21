# Called from e_tick if ring_cooldown matches 1..

## CONSTRAINTS
#   AS bell node

#====================================================================================================

# Reduce bell cooldowns
scoreboard players remove @s game.node.bell.ring_cooldown 1

# Replace bell just before cooldown ends
execute if entity @s[scores={game.node.bell.ring_cooldown=0},tag=!Smashed] run function exigence:bell/node/private/respawn_bell

# Cooldown particles around any BellNodes that are in cooldown
execute if entity @s[scores={game.node.bell.ring_cooldown=1..},tag=!Smashed] run function exigence:bell/node/cooldown_ambient