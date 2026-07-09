# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Right click card shop

execute at @s run function exigence:hub/ember_shop/menu/display/card/calls/clicked