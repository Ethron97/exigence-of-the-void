# Load 3 void items

## CONSTRAINTS
#   AS void merchant
#   Uses exigence:void_shop.selected[], must have array length of 6

## INPUT
#    FLOAT/STR rot_0

#====================================================================================================

# DEBUG
execute if score toggle.void debug matches 1 if score debug.level debug matches 4.. run say (D4 Void) Load 6

# Copy rotation
$data modify storage exigence:void_shop Rotation set value [$(rot_0)f,0.0f]

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[0]
execute at @s positioned ^ ^1.25 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[1]
execute at @s positioned ^0.5 ^1.5 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[2]
execute at @s positioned ^-0.5 ^1.5 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[3]
execute at @s positioned ^0.5 ^2 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[4]
execute at @s positioned ^-0.5 ^2 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop

data modify storage exigence:void_shop item_name set from storage exigence:void_shop selected[5]
execute at @s positioned ^ ^1.75 ^1 rotated ~ 0 run function exigence:game/other/void_shop/load/load_macro with storage exigence:void_shop
