say Unlock research

# Store this frame name
data modify storage exigence:shop frame_name set from entity @s CustomName
function exigence:hub/money_shop/update_item_name
execute store result storage exigence:shop shop_frame_id int 1 run scoreboard players get @s ShopFrameID

# Call macro
function exigence:hub/item_shop/frame/private/unlock_research_macro with storage exigence:shop

# Reload advancements
execute as @a[tag=MoneyShopping] run function exigence:hub/money_shop/load_advancements