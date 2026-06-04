# Call item specific load function from item name

## CONSTRAINTS
#   AT location

## INPUT
#   STR Rotation
#   STR item_name

#====================================================================================================

# DEBUG
$execute if score toggle.void debug matches 1 if score debug.level debug matches 4.. run say (D4 Void) load macro $(item_name) $(Rotation)

$function exigence:menu/item_display/void_shop_display/items/$(item_name)/load {Rotation:'$(Rotation)'}
