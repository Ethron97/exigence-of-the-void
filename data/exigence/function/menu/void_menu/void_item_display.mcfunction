# Implements load item display, summons new shop item display

## CONSTRAINTS:
# AT where to place item display

## INPUT:
#   STR item_name
#   INT money_cost
# {item_name:'',money_cost:0}

#=============================================================================================================

# DEBUG
#$say void item display $(Rotation) $(item_name)

# Summon item
$function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'$(item_name)'}

# Give right and left click functions
execute as @e[type=minecraft:item,tag=NVS] run data modify entity @s Item.components."minecraft:custom_data".function_right set value 'exigence:menu/item_display/void_shop_display/calls/right_clicked'
execute as @e[type=minecraft:item,tag=NVS] run data modify entity @s Item.components."minecraft:custom_data".function_left set value 'exigence:menu/item_display/void_shop_display/calls/left_clicked'
execute as @e[type=minecraft:item,tag=NVS] run data modify entity @s Item.components."minecraft:custom_data".function_hover set value 'exigence:menu/item_display/void_shop_display/calls/hover'
execute as @e[type=minecraft:item,tag=NVS] run data modify entity @s Item.components."minecraft:custom_data".function_unhover set value 'exigence:menu/item_display/void_shop_display/calls/unhover'

# Add costs to data
$execute as @e[type=minecraft:item,tag=NVS] run data modify entity @s Item.components."minecraft:custom_data".money_cost set value $(money_cost)

# Copy void shop id to data
execute as @e[type=minecraft:item,tag=NVS] store result entity @s Item.components."minecraft:custom_data".VoidShopID int 1 run scoreboard players get #highest game.void_merchant.shop_id

# Call load_item_display as summoned item
#   This handles copying the data and summoning item display
$execute as @e[type=minecraft:item,tag=NVS] run function exigence:menu/load_item_display {menu_tag:'MenuVoid',Rotation:'$(Rotation)',scale:'0.3',hover_scale:'0.4'}

# Assign game.void_merchant.shop_id
scoreboard players operation @e[type=minecraft:item_display,tag=NewItemDisplay] game.void_merchant.shop_id = #highest game.void_merchant.shop_id

# Give ItemShopDisplay tag
tag @e[type=minecraft:item_display,tag=NewItemDisplay] add VoidShopDisplay



# Summon interaction box
#   "FunctionInteraction" tells the game that this will can have an accompanying item with a function in the data to call when right clicked or left clicked
#execute at @e[type=minecraft:item,tag=NVS] run summon minecraft:interaction ^ ^-0.15 ^ {Tags:["MenuVoid","NewInteraction","Interaction","FunctionInteraction"],height:0.3f,width:0.3f,response:1b}

# Copy IDID to connect interaction to item display
#scoreboard players operation @e[type=minecraft:interaction,tag=NewInteraction] IDID = @e[type=minecraft:item_display,tag=NewItemDisplay,limit=1] IDID

# Kill summoned item (no longer needed)
kill @e[type=minecraft:item,tag=NVS]

# Remove local tag(s)
tag @e[type=minecraft:item_display,tag=NewItemDisplay] remove NewItemDisplay
tag @e[type=minecraft:interaction,tag=NewInteraction] remove NewInteraction
