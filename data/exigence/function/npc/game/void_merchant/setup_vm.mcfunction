# Setup single void merchant data

## CONSTRAINTS
#   AS Enderman (VoidMerchant)

#====================================================================================================

# Join team
team join Menace @s

# Give protections
effect give @s resistance infinite 200 true
effect give @s fire_resistance infinite 200 true
effect give @s instant_health infinite 200 true
# DEBUG
execute if score toggle.void debug matches 1 run effect give @s glowing infinite 0 true

# If we want each enderman to have their ownshop, re-randomize it here.
# ...
# Copy selected shop to entity data
data modify entity @s data.custom_data.selected set from storage exigence:void_shop selected

# Initialize position
function exigence:npc/game/void_merchant/teleport
