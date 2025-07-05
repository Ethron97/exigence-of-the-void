# Called when player steps onto orange glass to exit item shop

## CONSTRAINTS
#   AS player with ItemShopping

#==========================================================================================================

# Determines whether coop is leaving or primary player is leaving

# If coop shopper, just teleport out and remove tags
execute if entity @s[tag=ItemShopping,tag=CoopShopping] run function exigence:hub/item_shop/door/leave_coop

# If primary player, kick both out and save chests
execute if entity @s[tag=ItemShopping,tag=!CoopShopping] run function exigence:hub/item_shop/door/leave
