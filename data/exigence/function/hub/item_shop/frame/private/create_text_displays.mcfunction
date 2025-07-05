#$say Load text displays $(frame_name)
# Call as frame, determines which cost gets displayed
#$execute unless data storage exigence:shop {shop_unlocked:[$(frame_name)]} at @s run function exigence:hub/item_shop/frame/private/create_text_display_research with storage exigence:shop
execute at @s run function exigence:hub/item_shop/frame/private/create_text_display_money with storage exigence:shop