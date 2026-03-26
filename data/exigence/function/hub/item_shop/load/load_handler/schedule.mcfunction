# We schedule this function so we can call the iterate funciton with position information

## Schedule

#====================================================================================================
execute if score #cancel_item_shop_iterate Temp matches 1 run return fail

execute in exigence:hub positioned -43.5 200.0 0.5 run function exigence:hub/item_shop/load/load_handler/iterate