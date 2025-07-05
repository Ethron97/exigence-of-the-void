# Call as shope frame
execute store result storage exigence:shop shop_frame_id int 1 run scoreboard players get @s ShopFrameID
#execute store result storage exigence:shop shop_frame_id int 1 run scoreboard players get @s ItemShopTier

# Display id macro
execute at @s run function exigence:hub/item_shop/frame/private/display_id_macro with storage exigence:shop