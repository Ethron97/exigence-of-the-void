# Implements load item display, summons new shop item display

## CONSTRAINTS:
#   AT where to place item display

## INPUT:
#   STR item_name
#   INT money_cost
#   FLOAT[] Rotation
# {item_name:'',money_cost:0}

#====================================================================================================

# DEBUG
#$say void item display $(Rotation) $(item_name)

# Summon item
$function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'$(item_name)'}

# Call data function
$execute as @n[type=minecraft:item,tag=NVS,distance=..0.1] run function exigence:menu/void_menu/private/void_item_display_data {item_name:'$(item_name)',money_cost:$(money_cost),Rotation:'$(Rotation)'}
