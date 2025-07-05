#say Purchase item

# Store this frame name
data modify storage exigence:shop frame_name set from entity @s CustomName
function exigence:hub/money_shop/update_item_name

# Call macro
function exigence:hub/item_shop/frame/private/purchase_item_macro with storage exigence:shop