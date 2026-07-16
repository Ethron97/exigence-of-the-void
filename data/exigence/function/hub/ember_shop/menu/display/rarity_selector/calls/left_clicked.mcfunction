# Called by interaction.call_function_left

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Left click rarity selector

execute at @s run function exigence:hub/ember_shop/menu/display/rarity_selector/calls/clicked