# Loads data for void item display

## CONSTRAINTS:
#   AS/AT new void item display

## INPUT:
#   STR item_name
#   INT money_cost
#   FLOAT[] Rotation
# {item_name:'',money_cost:0}

#====================================================================================================

# Give right and left click functions
data modify entity @s Item.components."minecraft:custom_data".function_right set value 'exigence:menu/item_display/void_shop_display/calls/right_clicked'
data modify entity @s Item.components."minecraft:custom_data".function_left set value 'exigence:menu/item_display/void_shop_display/calls/left_clicked'
data modify entity @s Item.components."minecraft:custom_data".function_hover set value 'exigence:menu/item_display/void_shop_display/calls/hover'
data modify entity @s Item.components."minecraft:custom_data".function_unhover set value 'exigence:menu/item_display/void_shop_display/calls/unhover'

# Add costs to data
$data modify entity @s Item.components."minecraft:custom_data".money_cost set value $(money_cost)

# Copy void shop id to data
execute store result entity @s Item.components."minecraft:custom_data".VoidShopID int 1 run scoreboard players get #highest game.void_merchant.shop_id

# Call load_item_display as summoned item
#   This handles copying the data and summoning item display
$function exigence:menu/load_item_display {menu_tag:'MenuVoid',Rotation:'$(Rotation)',scale:'0.3',hover_scale:'0.4'}

# Assign game.void_merchant.shop_id
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] game.void_merchant.shop_id = #highest game.void_merchant.shop_id

# Give ItemShopDisplay tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] add VoidShopDisplay

# Kill summoned item (no longer needed)
kill @n[type=minecraft:item,tag=NVS,distance=..0.1]

# Remove local tag(s)
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay
