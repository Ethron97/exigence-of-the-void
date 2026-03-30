# Update parent line colors
#   We put into its own function because this really only needs called:
#   1. On shop load when someone enters
#   2. When someone Researches an item
# Call AFTER update_purchasability_displays

## CONSTRAINTS
#   AS item shop display

## INPUT
#   WITH data

#====================================================================================================

#say Update parent line colors

## UPDATE PARENT LINES
$execute if entity @s[tag=!IsParentResearched,tag=IsTierUnlocked] as @e[distance=..4,type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update/default
$execute if entity @s[tag=!IsTierUnlocked] as @e[distance=..4,type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update/locked

$execute if entity @s[tag=IsResearched] as @e[distance=..4,type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update/buyable
$execute if entity @s[tag=IsTierUnlocked,tag=!IsResearched,tag=IsParentResearched] as @e[distance=..4,type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update/researchable
