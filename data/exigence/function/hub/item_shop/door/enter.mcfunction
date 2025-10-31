# Called by door_tick when player steps into orange stained glass

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Enter item shop normal

# Reset team so you only see your own score
scoreboard players reset * hub.player.consumable_limit

# Add tag
tag @s add ItemShopping
team join ItemShop @s

# Teleport
execute at @s run tp @s ~1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Load shop menus
function exigence:hub/item_shop/load

# Refresh item limit
function exigence:player/utility/calculate_item_limit

# Ensure that player interaction exists
function exigence:player/utility/interaction/get_interaction

# Load chests
#function exigence:hub/money_shop/private/load_chests
