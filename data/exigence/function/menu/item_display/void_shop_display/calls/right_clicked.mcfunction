# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Void shop right click

# call purchase handler
execute if entity @s[tag=CanAfford,scores={shop.frame.purchase_cooldown=0}] run function exigence:menu/item_display/void_shop_display/purchase with entity @s item.components."minecraft:custom_data"
