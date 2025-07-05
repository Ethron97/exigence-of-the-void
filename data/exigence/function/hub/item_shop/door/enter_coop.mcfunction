# Called by door_tick when player steps into orange stained glass, if there is already someone shopping and they have coop enabled

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Enter item shop coop

# Reset team so you only see your own score
scoreboard players reset * ConsumableLimit

# Add tag
tag @s add ItemShopping
team join ItemShop @s
tag @s add CoopShopping

# Teleport
execute at @s run tp @s ~1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Update purchasability
function exigence:hub/item_shop/update_purchasability_full

# Refresh item limit
function exigence:player/utility/calculate_item_limit

# Ensure that player interaction exists
function exigence:player/utility/interaction/get_interaction
