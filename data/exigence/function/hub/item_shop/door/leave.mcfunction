# Called by door_tick when player steps into orange stained glass

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Leave full

# Teleport
execute at @s run tp @s ~-1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Unload shop menus
function exigence:hub/item_shop/unload

# Teleport any coop shoopers out as well
execute as @a[tag=CoopShopping] run tp @s -260.5 17 -44.5
tag @a[tag=CoopShopping] remove CoopShopping

# Remove tag
team leave @a[tag=ItemShopping]
tag @a[tag=ItemShopping] remove ItemShopping
