# Delete refresh detail hover

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Removing refresh details

$execute at @s run kill @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=RefreshDisplay,distance=..5]
