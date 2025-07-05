# Called by load handler / leave

## CONSTRAINTS
#   AS item_display without "Loaded" tag

#=============================================================================================================

# Teleport self
execute at @s run tp ^ ^-30 ^

# Associated objects follow
function exigence:menu/item_display/item_shop_display/load/follow with entity @s item.components."minecraft:custom_data"

execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @s run playsound minecraft:entity.breeze.land ambient @a ~ ~ ~ 2 1

# Load interaction
#execute at @s unless entity @e[distance=..0.2,type=interaction] run function exigence:menu/money_menus/money_item_display_interaction with entity @s item.components."minecraft:custom_data"

# Add loaded tag
tag @s add Loaded
# Remove iteration candidate for load tracking
tag @s remove IterateCandidate
