# Setup single void merchant data

## CONSTRAINTS
#   AS Enderman (VoidMerchant)

#=====================================================================================================

# Join team
team join Menace @s

# Give protections
effect give @s resistance infinite 200 true
effect give @s fire_resistance infinite 200 true
effect give @s instant_health infinite 200 true

# DEBUG
execute if data storage exigence:debug {void:1} run effect give @s glowing infinite 0 true

# Teleport all void merchants to initialize their position
execute as @s run function exigence:npc/game/void_merchant/teleport
