# Reset advancement
advancement revoke @s only exigence:listener/shop_interact

#say Shop interact test

say Deprecated

# Set shop interact score of selected shop frame to 4
# IF PLYAER CAN AFFORD IT [?]
execute as @e[type=minecraft:glow_item_frame,tag=ShopFrame,tag=SelectedShopFrame,tag=CanBuy] run scoreboard players set @s ShopInteractScore 4
execute as @e[type=minecraft:glow_item_frame,tag=ShopFrame,tag=SelectedShopFrame,tag=CanResearch] run scoreboard players set @s ShopInteractScore 4
execute as @e[type=minecraft:glow_item_frame,tag=ShopFrame,tag=SelectedShopFrame,tag=!CanBuy,tag=!CanResearch] at @s run function exigence:hub/item_shop/frame/display_locked_reason



#say shop interact