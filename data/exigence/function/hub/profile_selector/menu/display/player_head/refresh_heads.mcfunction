# Add/remove and then reorder all heads for this slot

## CONSTRAINTS
#   AS/at slot display

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Refresh heads

# Initialize all player heads
function exigence:hub/profile_selector/menu/display/player_head/load/upsert_heads

# Order player heads
function exigence:hub/profile_selector/menu/display/player_head/order/order_heads
