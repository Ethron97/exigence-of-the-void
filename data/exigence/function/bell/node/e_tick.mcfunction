# Called by bell_tick

## CONSTRAINTS
#   AS BellNode

# ===============================================================================================================

execute unless entity @s[tag=Active] run return fail
#----------------------------------------------------------------------------------------------------------------

execute if score @s game.node.bell.ring_cooldown matches 1.. run function exigence:bell/node/private/ring_cooldown

execute if score mod.resonance game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 3 run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5
execute if score mod.resonance game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 13 run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5
