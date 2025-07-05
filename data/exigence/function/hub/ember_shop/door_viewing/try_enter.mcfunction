# Called by door_tick when player steps into light blue stained glass and they are not already ember viewing

## CONSTRAINTS
# AS player

#=============================================================================================================

# If someone else ise SHOPPING, return
execute if entity @a[tag=EmberShopping] run return 1

# If someone else is viewing (and coop DISABLED), return
execute if entity @a[tag=EmberViewing,scores={s_enableCoop=0}] run return 1

# If someone else is viewing (and coop ENABLED), coop enter
execute if entity @a[tag=EmberViewing,scores={s_enableCoop=1}] run function exigence:hub/ember_shop/door_viewing/enter_coop

# If there is no one else EmberViewing, join normal
execute unless entity @a[tag=EmberViewing] run function exigence:hub/ember_shop/door_viewing/enter
