# Delete cost display

## CONSTRAINTS
#   AS item_display (tag=DisplayingCost)

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Removing cost display

# Remove tag
tag @s remove DisplayingCost

$execute at @s run kill @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=CostDisplay,distance=..5]
