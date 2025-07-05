# Called by door_tick when player steps into light blue stained glass and they are ember shopping

## CONSTRAINTS
#   AS player with EmberShopping

#==========================================================================================================

# Determines whether coop is leaving or primary player is leaving

# If coop shopper, just teleport out and remove tags
execute if entity @s[tag=EmberShopping,tag=CoopEmberShopping] run function exigence:hub/ember_shop/door_shopping/leave_coop

# If primary player, kick both out and save chests
execute if entity @s[tag=EmberShopping,tag=!CoopEmberShopping] run function exigence:hub/ember_shop/door_shopping/leave
