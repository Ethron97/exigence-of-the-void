# Called by door_tick when player steps into orange stained glass

## CONSTRAINTS
# AS player

#=============================================================================================================

# If someone else is shopping (and coop DISABLED), return
execute if entity @a[tag=ItemShopping,scores={s_enableCoop=0}] run return 1

# If someone else is shopping (and coop ENABLED), coop enter
execute if entity @a[tag=ItemShopping,scores={s_enableCoop=1}] run function exigence:hub/item_shop/door/enter_coop

# If there is no one else ItemShopping, join normal
execute unless entity @a[tag=ItemShopping] run function exigence:hub/item_shop/door/enter
