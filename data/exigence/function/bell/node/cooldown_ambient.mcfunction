# Particles on cooldown
# Particles explode out and then zoop back in

## CONSTRAINTS
#   AS bell node with game.node.bell.ring_cooldown score 1..

#================================================================================================================

execute at @s[scores={game.node.bell.ring_cooldown=90..99}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.5 1.5 1.5 0 3
execute at @s[scores={game.node.bell.ring_cooldown=80..89}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.4 1.4 1.4 0 3
execute at @s[scores={game.node.bell.ring_cooldown=70..79}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.3 1.3 1.3 0 3
execute at @s[scores={game.node.bell.ring_cooldown=60..69}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.2 1.2 1.2 0 3
execute at @s[scores={game.node.bell.ring_cooldown=50..59}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.1 1.1 1.0 0 3
execute at @s[scores={game.node.bell.ring_cooldown=40..49}] run particle minecraft:electric_spark ~ ~0.3 ~ 1.0 1.0 1.0 0 3

# Bell sound
execute at @s[scores={game.node.bell.ring_cooldown=40}] run playsound minecraft:block.bell.resonate block @a

execute at @s[scores={game.node.bell.ring_cooldown=30..39}] run particle minecraft:electric_spark ~ ~0.3 ~ 0.8 0.8 0.8 0 3
execute at @s[scores={game.node.bell.ring_cooldown=20..29}] run particle minecraft:electric_spark ~ ~0.3 ~ 0.6 0.6 0.6 0 3
execute at @s[scores={game.node.bell.ring_cooldown=10..19}] run particle minecraft:electric_spark ~ ~0.3 ~ 0.4 0.4 0.4 0 3

execute at @s[scores={game.node.bell.ring_cooldown=1..9}] run particle minecraft:electric_spark ~ ~0.3 ~ 0.2 0.2 0.2 0 3
