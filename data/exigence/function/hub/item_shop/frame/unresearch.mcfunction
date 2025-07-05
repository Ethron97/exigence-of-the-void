# Call as shop frame
# Assumes player with Resetting tag exists

data modify storage exigence:shop frame_name set from entity @s CustomName
function exigence:hub/money_shop/update_item_name
function exigence:hub/item_shop/frame/private/unresearch with storage exigence:shop