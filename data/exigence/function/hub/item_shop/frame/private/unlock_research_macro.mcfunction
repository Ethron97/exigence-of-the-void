say Reserach macro purchase

# Grant advancement
$advancement grant @a[tag=MoneyShopping] only exigence:unlockables/shop_unlock_$(item_name)

# Kill research cost display
$kill @e[type=minecraft:text_display,tag=ResearchDisplay,scores={ShopFrameID=$(shop_frame_id)}]